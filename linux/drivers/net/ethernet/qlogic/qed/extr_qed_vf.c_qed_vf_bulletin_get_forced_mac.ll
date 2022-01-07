; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_vf.c_qed_vf_bulletin_get_forced_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_vf.c_qed_vf_bulletin_get_forced_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.qed_bulletin_content }
%struct.qed_bulletin_content = type { i32, i32 }

@MAC_ADDR_FORCED = common dso_local global i32 0, align 4
@VFPF_BULLETIN_MAC_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, i32*, i32*)* @qed_vf_bulletin_get_forced_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_vf_bulletin_get_forced_mac(%struct.qed_hwfn* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.qed_bulletin_content*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %10 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.qed_bulletin_content* %12, %struct.qed_bulletin_content** %8, align 8
  %13 = load %struct.qed_bulletin_content*, %struct.qed_bulletin_content** %8, align 8
  %14 = getelementptr inbounds %struct.qed_bulletin_content, %struct.qed_bulletin_content* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @MAC_ADDR_FORCED, align 4
  %17 = shl i32 1, %16
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load i32*, i32** %7, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32*, i32** %7, align 8
  store i32 1, i32* %24, align 4
  br label %25

25:                                               ; preds = %23, %20
  br label %42

26:                                               ; preds = %3
  %27 = load %struct.qed_bulletin_content*, %struct.qed_bulletin_content** %8, align 8
  %28 = getelementptr inbounds %struct.qed_bulletin_content, %struct.qed_bulletin_content* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @VFPF_BULLETIN_MAC_ADDR, align 4
  %31 = shl i32 1, %30
  %32 = and i32 %29, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %26
  %35 = load i32*, i32** %7, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32*, i32** %7, align 8
  store i32 0, i32* %38, align 4
  br label %39

39:                                               ; preds = %37, %34
  br label %41

40:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %48

41:                                               ; preds = %39
  br label %42

42:                                               ; preds = %41, %25
  %43 = load i32*, i32** %6, align 8
  %44 = load %struct.qed_bulletin_content*, %struct.qed_bulletin_content** %8, align 8
  %45 = getelementptr inbounds %struct.qed_bulletin_content, %struct.qed_bulletin_content* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ether_addr_copy(i32* %43, i32 %46)
  store i32 1, i32* %4, align 4
  br label %48

48:                                               ; preds = %42, %40
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @ether_addr_copy(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
