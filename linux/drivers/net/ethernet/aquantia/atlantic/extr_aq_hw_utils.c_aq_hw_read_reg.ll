; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_hw_utils.c_aq_hw_read_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_hw_utils.c_aq_hw_read_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_hw_s = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@AQ_HW_FLAG_ERR_UNPLUG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aq_hw_read_reg(%struct.aq_hw_s* %0, i32 %1) #0 {
  %3 = alloca %struct.aq_hw_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.aq_hw_s* %0, %struct.aq_hw_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %7 = getelementptr inbounds %struct.aq_hw_s, %struct.aq_hw_s* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = add i32 %8, %9
  %11 = call i32 @readl(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 -1, %12
  br i1 %13, label %14, label %33

14:                                               ; preds = %2
  %15 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %16 = getelementptr inbounds %struct.aq_hw_s, %struct.aq_hw_s* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %19 = getelementptr inbounds %struct.aq_hw_s, %struct.aq_hw_s* %18, i32 0, i32 2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add i32 %17, %24
  %26 = call i32 @readl(i32 %25)
  %27 = icmp eq i32 -1, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %14
  %29 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %30 = getelementptr inbounds %struct.aq_hw_s, %struct.aq_hw_s* %29, i32 0, i32 1
  %31 = load i32, i32* @AQ_HW_FLAG_ERR_UNPLUG, align 4
  %32 = call i32 @aq_utils_obj_set(i32* %30, i32 %31)
  br label %33

33:                                               ; preds = %28, %14, %2
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @aq_utils_obj_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
