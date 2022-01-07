; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_vf.c_qed_vf_check_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_vf.c_qed_vf_check_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.qed_bulletin_content }
%struct.qed_bulletin_content = type { i32, i32 }

@MAC_ADDR_FORCED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_vf_check_mac(%struct.qed_hwfn* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.qed_bulletin_content*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %8 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.qed_bulletin_content* %10, %struct.qed_bulletin_content** %6, align 8
  %11 = load %struct.qed_bulletin_content*, %struct.qed_bulletin_content** %6, align 8
  %12 = getelementptr inbounds %struct.qed_bulletin_content, %struct.qed_bulletin_content* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @MAC_ADDR_FORCED, align 4
  %15 = shl i32 1, %14
  %16 = and i32 %13, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %28

19:                                               ; preds = %2
  %20 = load %struct.qed_bulletin_content*, %struct.qed_bulletin_content** %6, align 8
  %21 = getelementptr inbounds %struct.qed_bulletin_content, %struct.qed_bulletin_content* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = call i64 @ether_addr_equal(i32 %22, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %28

27:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %26, %18
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i64 @ether_addr_equal(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
