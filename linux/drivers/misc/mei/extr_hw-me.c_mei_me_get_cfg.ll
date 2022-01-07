; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-me.c_mei_me_get_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-me.c_mei_me_get_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_cfg = type { i32 }

@mei_cfg_list = common dso_local global %struct.mei_cfg** null, align 8
@MEI_ME_NUM_CFG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mei_cfg* @mei_me_get_cfg(i64 %0) #0 {
  %2 = alloca %struct.mei_cfg*, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load %struct.mei_cfg**, %struct.mei_cfg*** @mei_cfg_list, align 8
  %5 = call i64 @ARRAY_SIZE(%struct.mei_cfg** %4)
  %6 = load i64, i64* @MEI_ME_NUM_CFG, align 8
  %7 = icmp ne i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @BUILD_BUG_ON(i32 %8)
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @MEI_ME_NUM_CFG, align 8
  %12 = icmp sge i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store %struct.mei_cfg* null, %struct.mei_cfg** %2, align 8
  br label %19

14:                                               ; preds = %1
  %15 = load %struct.mei_cfg**, %struct.mei_cfg*** @mei_cfg_list, align 8
  %16 = load i64, i64* %3, align 8
  %17 = getelementptr inbounds %struct.mei_cfg*, %struct.mei_cfg** %15, i64 %16
  %18 = load %struct.mei_cfg*, %struct.mei_cfg** %17, align 8
  store %struct.mei_cfg* %18, %struct.mei_cfg** %2, align 8
  br label %19

19:                                               ; preds = %14, %13
  %20 = load %struct.mei_cfg*, %struct.mei_cfg** %2, align 8
  ret %struct.mei_cfg* %20
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i64 @ARRAY_SIZE(%struct.mei_cfg**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
