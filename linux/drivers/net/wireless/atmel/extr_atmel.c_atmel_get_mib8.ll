; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_atmel.c_atmel_get_mib8.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_atmel.c_atmel_get_mib8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_private = type { i32 }
%struct.get_set_mib = type { i32, i8*, i8* }

@CMD_Get_MIB_Vars = common dso_local global i32 0, align 4
@MIB_HEADER_SIZE = common dso_local global i64 0, align 8
@CMD_BLOCK_PARAMETERS_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.atmel_private*, i8*, i8*)* @atmel_get_mib8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @atmel_get_mib8(%struct.atmel_private* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.atmel_private*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.get_set_mib, align 8
  store %struct.atmel_private* %0, %struct.atmel_private** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = getelementptr inbounds %struct.get_set_mib, %struct.get_set_mib* %7, i32 0, i32 2
  store i8* %8, i8** %9, align 8
  %10 = getelementptr inbounds %struct.get_set_mib, %struct.get_set_mib* %7, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = getelementptr inbounds %struct.get_set_mib, %struct.get_set_mib* %7, i32 0, i32 1
  store i8* %11, i8** %12, align 8
  %13 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %14 = load i32, i32* @CMD_Get_MIB_Vars, align 4
  %15 = load i64, i64* @MIB_HEADER_SIZE, align 8
  %16 = add nsw i64 %15, 1
  %17 = call i32 @atmel_send_command_wait(%struct.atmel_private* %13, i32 %14, %struct.get_set_mib* %7, i64 %16)
  %18 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %19 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %20 = load i64, i64* @CMD_BLOCK_PARAMETERS_OFFSET, align 8
  %21 = load i64, i64* @MIB_HEADER_SIZE, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @atmel_co(%struct.atmel_private* %19, i64 %22)
  %24 = call i8* @atmel_rmem8(%struct.atmel_private* %18, i32 %23)
  ret i8* %24
}

declare dso_local i32 @atmel_send_command_wait(%struct.atmel_private*, i32, %struct.get_set_mib*, i64) #1

declare dso_local i8* @atmel_rmem8(%struct.atmel_private*, i32) #1

declare dso_local i32 @atmel_co(%struct.atmel_private*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
