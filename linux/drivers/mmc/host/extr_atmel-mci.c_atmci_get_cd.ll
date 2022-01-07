; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_atmel-mci.c_atmci_get_cd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_atmel-mci.c_atmci_get_cd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.atmel_mci_slot = type { i32, i32 }

@ENOSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"card is %spresent\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"not \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*)* @atmci_get_cd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmci_get_cd(%struct.mmc_host* %0) #0 {
  %2 = alloca %struct.mmc_host*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.atmel_mci_slot*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %2, align 8
  %5 = load i32, i32* @ENOSYS, align 4
  %6 = sub nsw i32 0, %5
  store i32 %6, i32* %3, align 4
  %7 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %8 = call %struct.atmel_mci_slot* @mmc_priv(%struct.mmc_host* %7)
  store %struct.atmel_mci_slot* %8, %struct.atmel_mci_slot** %4, align 8
  %9 = load %struct.atmel_mci_slot*, %struct.atmel_mci_slot** %4, align 8
  %10 = getelementptr inbounds %struct.atmel_mci_slot, %struct.atmel_mci_slot* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @gpio_is_valid(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %33

14:                                               ; preds = %1
  %15 = load %struct.atmel_mci_slot*, %struct.atmel_mci_slot** %4, align 8
  %16 = getelementptr inbounds %struct.atmel_mci_slot, %struct.atmel_mci_slot* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @gpio_get_value(i32 %17)
  %19 = load %struct.atmel_mci_slot*, %struct.atmel_mci_slot** %4, align 8
  %20 = getelementptr inbounds %struct.atmel_mci_slot, %struct.atmel_mci_slot* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = xor i32 %18, %21
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %3, align 4
  %26 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %27 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %26, i32 0, i32 0
  %28 = load i32, i32* %3, align 4
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %32 = call i32 @dev_dbg(i32* %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %31)
  br label %33

33:                                               ; preds = %14, %1
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.atmel_mci_slot* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @gpio_get_value(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
