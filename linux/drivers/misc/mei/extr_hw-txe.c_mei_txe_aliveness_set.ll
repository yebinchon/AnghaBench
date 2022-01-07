; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-txe.c_mei_txe_aliveness_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-txe.c_mei_txe_aliveness_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { i32, i32 }
%struct.mei_txe_hw = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Aliveness current=%d request=%d\0A\00", align 1
@MEI_PG_EVENT_WAIT = common dso_local global i32 0, align 4
@SICR_HOST_ALIVENESS_REQ_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mei_device*, i32)* @mei_txe_aliveness_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mei_txe_aliveness_set(%struct.mei_device* %0, i32 %1) #0 {
  %3 = alloca %struct.mei_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mei_txe_hw*, align 8
  %6 = alloca i32, align 4
  store %struct.mei_device* %0, %struct.mei_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %8 = call %struct.mei_txe_hw* @to_txe_hw(%struct.mei_device* %7)
  store %struct.mei_txe_hw* %8, %struct.mei_txe_hw** %5, align 8
  %9 = load %struct.mei_txe_hw*, %struct.mei_txe_hw** %5, align 8
  %10 = getelementptr inbounds %struct.mei_txe_hw, %struct.mei_txe_hw* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %11, %12
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %6, align 4
  %15 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %16 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.mei_txe_hw*, %struct.mei_txe_hw** %5, align 8
  %19 = getelementptr inbounds %struct.mei_txe_hw, %struct.mei_txe_hw* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @dev_dbg(i32 %17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %2
  %26 = load i32, i32* @MEI_PG_EVENT_WAIT, align 4
  %27 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %28 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.mei_txe_hw*, %struct.mei_txe_hw** %5, align 8
  %30 = load i32, i32* @SICR_HOST_ALIVENESS_REQ_REG, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @mei_txe_br_reg_write(%struct.mei_txe_hw* %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %25, %2
  %34 = load i32, i32* %6, align 4
  ret i32 %34
}

declare dso_local %struct.mei_txe_hw* @to_txe_hw(%struct.mei_device*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @mei_txe_br_reg_write(%struct.mei_txe_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
