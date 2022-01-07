; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_mii.c_generic_mii_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_mii.c_generic_mii_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_if_info = type { i32, i32, i32, i32, i32, i32 (i32, i32, i32, i32)*, i32, i32 (i32, i32, i32)*, i32 }
%struct.mii_ioctl_data = type { i32, i32, i32, i32 }

@BMCR_RESET = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@BMCR_FULLDPLX = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @generic_mii_ioctl(%struct.mii_if_info* %0, %struct.mii_ioctl_data* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.mii_if_info*, align 8
  %6 = alloca %struct.mii_ioctl_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mii_if_info* %0, %struct.mii_if_info** %5, align 8
  store %struct.mii_ioctl_data* %1, %struct.mii_ioctl_data** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load i32*, i32** %8, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i32*, i32** %8, align 8
  store i32 0, i32* %16, align 4
  br label %17

17:                                               ; preds = %15, %4
  %18 = load %struct.mii_if_info*, %struct.mii_if_info** %5, align 8
  %19 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %18, i32 0, i32 8
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %6, align 8
  %22 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load %struct.mii_if_info*, %struct.mii_if_info** %5, align 8
  %26 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %6, align 8
  %29 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load i32, i32* %7, align 4
  switch i32 %32, label %126 [
    i32 130, label %33
    i32 129, label %39
    i32 128, label %55
  ]

33:                                               ; preds = %17
  %34 = load %struct.mii_if_info*, %struct.mii_if_info** %5, align 8
  %35 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %6, align 8
  %38 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %17, %33
  %40 = load %struct.mii_if_info*, %struct.mii_if_info** %5, align 8
  %41 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %40, i32 0, i32 7
  %42 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %41, align 8
  %43 = load %struct.mii_if_info*, %struct.mii_if_info** %5, align 8
  %44 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %6, align 8
  %47 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %6, align 8
  %50 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 %42(i32 %45, i32 %48, i32 %51)
  %53 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %6, align 8
  %54 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  br label %129

55:                                               ; preds = %17
  %56 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %6, align 8
  %57 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %11, align 4
  %59 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %6, align 8
  %60 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.mii_if_info*, %struct.mii_if_info** %5, align 8
  %63 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %61, %64
  br i1 %65, label %66, label %111

66:                                               ; preds = %55
  %67 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %6, align 8
  %68 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  switch i32 %69, label %109 [
    i32 131, label %70
    i32 132, label %105
  ]

70:                                               ; preds = %66
  store i32 0, i32* %12, align 4
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* @BMCR_RESET, align 4
  %73 = load i32, i32* @BMCR_ANENABLE, align 4
  %74 = or i32 %72, %73
  %75 = and i32 %71, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  %78 = load %struct.mii_if_info*, %struct.mii_if_info** %5, align 8
  %79 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %78, i32 0, i32 1
  store i32 0, i32* %79, align 4
  br label %83

80:                                               ; preds = %70
  %81 = load %struct.mii_if_info*, %struct.mii_if_info** %5, align 8
  %82 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %81, i32 0, i32 1
  store i32 1, i32* %82, align 4
  br label %83

83:                                               ; preds = %80, %77
  %84 = load %struct.mii_if_info*, %struct.mii_if_info** %5, align 8
  %85 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %83
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* @BMCR_FULLDPLX, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  store i32 1, i32* %12, align 4
  br label %94

94:                                               ; preds = %93, %88, %83
  %95 = load %struct.mii_if_info*, %struct.mii_if_info** %5, align 8
  %96 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %12, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %94
  store i32 1, i32* %10, align 4
  %101 = load i32, i32* %12, align 4
  %102 = load %struct.mii_if_info*, %struct.mii_if_info** %5, align 8
  %103 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 8
  br label %104

104:                                              ; preds = %100, %94
  br label %110

105:                                              ; preds = %66
  %106 = load i32, i32* %11, align 4
  %107 = load %struct.mii_if_info*, %struct.mii_if_info** %5, align 8
  %108 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %107, i32 0, i32 3
  store i32 %106, i32* %108, align 4
  br label %110

109:                                              ; preds = %66
  br label %110

110:                                              ; preds = %109, %105, %104
  br label %111

111:                                              ; preds = %110, %55
  %112 = load %struct.mii_if_info*, %struct.mii_if_info** %5, align 8
  %113 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %112, i32 0, i32 5
  %114 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %113, align 8
  %115 = load %struct.mii_if_info*, %struct.mii_if_info** %5, align 8
  %116 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %6, align 8
  %119 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %6, align 8
  %122 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %11, align 4
  %125 = call i32 %114(i32 %117, i32 %120, i32 %123, i32 %124)
  br label %129

126:                                              ; preds = %17
  %127 = load i32, i32* @EOPNOTSUPP, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %9, align 4
  br label %129

129:                                              ; preds = %126, %111, %39
  %130 = load i32, i32* %9, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %129
  %133 = load i32*, i32** %8, align 8
  %134 = icmp ne i32* %133, null
  br i1 %134, label %135, label %140

135:                                              ; preds = %132
  %136 = load i32, i32* %10, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %135
  %139 = load i32*, i32** %8, align 8
  store i32 1, i32* %139, align 4
  br label %140

140:                                              ; preds = %138, %135, %132, %129
  %141 = load i32, i32* %9, align 4
  ret i32 %141
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
