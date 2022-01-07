; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_res.c_enic_init_vnic_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_res.c_enic_init_vnic_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enic = type { i32, i32, i32, i32, %struct.TYPE_2__, i32*, i32*, i32*, i32*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @enic_init_vnic_resources(%struct.enic* %0) #0 {
  %2 = alloca %struct.enic*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.enic* %0, %struct.enic** %2, align 8
  %10 = load %struct.enic*, %struct.enic** %2, align 8
  %11 = getelementptr inbounds %struct.enic, %struct.enic* %10, i32 0, i32 9
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @vnic_dev_get_intr_mode(i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  switch i32 %14, label %20 [
    i32 130, label %15
    i32 128, label %15
  ]

15:                                               ; preds = %1, %1
  store i32 1, i32* %6, align 4
  %16 = load %struct.enic*, %struct.enic** %2, align 8
  %17 = getelementptr inbounds %struct.enic, %struct.enic* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sub nsw i32 %18, 2
  store i32 %19, i32* %7, align 4
  br label %21

20:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %20, %15
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %40, %21
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.enic*, %struct.enic** %2, align 8
  %25 = getelementptr inbounds %struct.enic, %struct.enic* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ult i32 %23, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %22
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %8, align 4
  %30 = load %struct.enic*, %struct.enic** %2, align 8
  %31 = getelementptr inbounds %struct.enic, %struct.enic* %30, i32 0, i32 8
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @vnic_rq_init(i32* %35, i32 %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %28
  %41 = load i32, i32* %9, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %9, align 4
  br label %22

43:                                               ; preds = %22
  store i32 0, i32* %9, align 4
  br label %44

44:                                               ; preds = %66, %43
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.enic*, %struct.enic** %2, align 8
  %47 = getelementptr inbounds %struct.enic, %struct.enic* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = icmp ult i32 %45, %48
  br i1 %49, label %50, label %69

50:                                               ; preds = %44
  %51 = load %struct.enic*, %struct.enic** %2, align 8
  %52 = getelementptr inbounds %struct.enic, %struct.enic* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %9, align 4
  %55 = add i32 %53, %54
  store i32 %55, i32* %8, align 4
  %56 = load %struct.enic*, %struct.enic** %2, align 8
  %57 = getelementptr inbounds %struct.enic, %struct.enic* %56, i32 0, i32 7
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @vnic_wq_init(i32* %61, i32 %62, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %50
  %67 = load i32, i32* %9, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %9, align 4
  br label %44

69:                                               ; preds = %44
  store i32 0, i32* %9, align 4
  br label %70

70:                                               ; preds = %90, %69
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.enic*, %struct.enic** %2, align 8
  %73 = getelementptr inbounds %struct.enic, %struct.enic* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = icmp ult i32 %71, %74
  br i1 %75, label %76, label %93

76:                                               ; preds = %70
  %77 = load i32, i32* %3, align 4
  switch i32 %77, label %80 [
    i32 128, label %78
  ]

78:                                               ; preds = %76
  %79 = load i32, i32* %9, align 4
  store i32 %79, i32* %5, align 4
  br label %81

80:                                               ; preds = %76
  store i32 0, i32* %5, align 4
  br label %81

81:                                               ; preds = %80, %78
  %82 = load %struct.enic*, %struct.enic** %2, align 8
  %83 = getelementptr inbounds %struct.enic, %struct.enic* %82, i32 0, i32 6
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %9, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @vnic_cq_init(i32* %87, i32 0, i32 1, i32 0, i32 0, i32 1, i32 1, i32 1, i32 0, i32 %88, i32 0)
  br label %90

90:                                               ; preds = %81
  %91 = load i32, i32* %9, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %9, align 4
  br label %70

93:                                               ; preds = %70
  %94 = load i32, i32* %3, align 4
  switch i32 %94, label %96 [
    i32 129, label %95
    i32 128, label %95
  ]

95:                                               ; preds = %93, %93
  store i32 1, i32* %4, align 4
  br label %97

96:                                               ; preds = %93
  store i32 0, i32* %4, align 4
  br label %97

97:                                               ; preds = %96, %95
  store i32 0, i32* %9, align 4
  br label %98

98:                                               ; preds = %121, %97
  %99 = load i32, i32* %9, align 4
  %100 = load %struct.enic*, %struct.enic** %2, align 8
  %101 = getelementptr inbounds %struct.enic, %struct.enic* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp ult i32 %99, %102
  br i1 %103, label %104, label %124

104:                                              ; preds = %98
  %105 = load %struct.enic*, %struct.enic** %2, align 8
  %106 = getelementptr inbounds %struct.enic, %struct.enic* %105, i32 0, i32 5
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %9, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load %struct.enic*, %struct.enic** %2, align 8
  %112 = getelementptr inbounds %struct.enic, %struct.enic* %111, i32 0, i32 4
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.enic*, %struct.enic** %2, align 8
  %116 = getelementptr inbounds %struct.enic, %struct.enic* %115, i32 0, i32 4
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %4, align 4
  %120 = call i32 @vnic_intr_init(i32* %110, i32 %114, i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %104
  %122 = load i32, i32* %9, align 4
  %123 = add i32 %122, 1
  store i32 %123, i32* %9, align 4
  br label %98

124:                                              ; preds = %98
  ret void
}

declare dso_local i32 @vnic_dev_get_intr_mode(i32) #1

declare dso_local i32 @vnic_rq_init(i32*, i32, i32, i32) #1

declare dso_local i32 @vnic_wq_init(i32*, i32, i32, i32) #1

declare dso_local i32 @vnic_cq_init(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vnic_intr_init(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
