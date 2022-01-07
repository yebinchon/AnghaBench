; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-me.c_mei_me_pg_unset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-me.c_mei_me_pg_unset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { i32 }
%struct.mei_me_hw = type { i32 }

@H_HPG_CSR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"H_HPG_CSR\00", align 1
@H_HPG_CSR_PGI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"PGI is not set\0A\00", align 1
@H_HPG_CSR_PGIHEXR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mei_device*)* @mei_me_pg_unset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mei_me_pg_unset(%struct.mei_device* %0) #0 {
  %2 = alloca %struct.mei_device*, align 8
  %3 = alloca %struct.mei_me_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.mei_device* %0, %struct.mei_device** %2, align 8
  %5 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %6 = call %struct.mei_me_hw* @to_me_hw(%struct.mei_device* %5)
  store %struct.mei_me_hw* %6, %struct.mei_me_hw** %3, align 8
  %7 = load %struct.mei_me_hw*, %struct.mei_me_hw** %3, align 8
  %8 = load i32, i32* @H_HPG_CSR, align 4
  %9 = call i32 @mei_me_reg_read(%struct.mei_me_hw* %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %11 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @H_HPG_CSR, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @trace_mei_reg_read(i32 %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @H_HPG_CSR_PGI, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @WARN(i32 %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @H_HPG_CSR_PGIHEXR, align 4
  %24 = load i32, i32* %4, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %4, align 4
  %26 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %27 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @H_HPG_CSR, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @trace_mei_reg_write(i32 %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load %struct.mei_me_hw*, %struct.mei_me_hw** %3, align 8
  %33 = load i32, i32* @H_HPG_CSR, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @mei_me_reg_write(%struct.mei_me_hw* %32, i32 %33, i32 %34)
  ret void
}

declare dso_local %struct.mei_me_hw* @to_me_hw(%struct.mei_device*) #1

declare dso_local i32 @mei_me_reg_read(%struct.mei_me_hw*, i32) #1

declare dso_local i32 @trace_mei_reg_read(i32, i8*, i32, i32) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @trace_mei_reg_write(i32, i8*, i32, i32) #1

declare dso_local i32 @mei_me_reg_write(%struct.mei_me_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
