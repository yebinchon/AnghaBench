; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss.c_camss_unregister_entities.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss.c_camss_unregister_entities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camss = type { i32, i32, i32, i32*, i32, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.camss*)* @camss_unregister_entities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @camss_unregister_entities(%struct.camss* %0) #0 {
  %2 = alloca %struct.camss*, align 8
  %3 = alloca i32, align 4
  store %struct.camss* %0, %struct.camss** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %18, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.camss*, %struct.camss** %2, align 8
  %7 = getelementptr inbounds %struct.camss, %struct.camss* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ult i32 %5, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %4
  %11 = load %struct.camss*, %struct.camss** %2, align 8
  %12 = getelementptr inbounds %struct.camss, %struct.camss* %11, i32 0, i32 6
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = call i32 @msm_csiphy_unregister_entity(i32* %16)
  br label %18

18:                                               ; preds = %10
  %19 = load i32, i32* %3, align 4
  %20 = add i32 %19, 1
  store i32 %20, i32* %3, align 4
  br label %4

21:                                               ; preds = %4
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %36, %21
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.camss*, %struct.camss** %2, align 8
  %25 = getelementptr inbounds %struct.camss, %struct.camss* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ult i32 %23, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %22
  %29 = load %struct.camss*, %struct.camss** %2, align 8
  %30 = getelementptr inbounds %struct.camss, %struct.camss* %29, i32 0, i32 5
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = call i32 @msm_csid_unregister_entity(i32* %34)
  br label %36

36:                                               ; preds = %28
  %37 = load i32, i32* %3, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %22

39:                                               ; preds = %22
  %40 = load %struct.camss*, %struct.camss** %2, align 8
  %41 = getelementptr inbounds %struct.camss, %struct.camss* %40, i32 0, i32 4
  %42 = call i32 @msm_ispif_unregister_entities(i32* %41)
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %57, %39
  %44 = load i32, i32* %3, align 4
  %45 = load %struct.camss*, %struct.camss** %2, align 8
  %46 = getelementptr inbounds %struct.camss, %struct.camss* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = icmp ult i32 %44, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %43
  %50 = load %struct.camss*, %struct.camss** %2, align 8
  %51 = getelementptr inbounds %struct.camss, %struct.camss* %50, i32 0, i32 3
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %3, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = call i32 @msm_vfe_unregister_entities(i32* %55)
  br label %57

57:                                               ; preds = %49
  %58 = load i32, i32* %3, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %3, align 4
  br label %43

60:                                               ; preds = %43
  ret void
}

declare dso_local i32 @msm_csiphy_unregister_entity(i32*) #1

declare dso_local i32 @msm_csid_unregister_entity(i32*) #1

declare dso_local i32 @msm_ispif_unregister_entities(i32*) #1

declare dso_local i32 @msm_vfe_unregister_entities(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
