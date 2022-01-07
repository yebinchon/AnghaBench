; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-csi2.c_rcsi2_parse_v4l2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-csi2.c_rcsi2_parse_v4l2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_csi2 = type { i32, i32*, i32 }
%struct.v4l2_fwnode_endpoint = type { i64, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32* }
%struct.TYPE_4__ = type { i64, i64 }

@ENOTCONN = common dso_local global i32 0, align 4
@V4L2_MBUS_CSI2_DPHY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"Unsupported bus: %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Unsupported number of data-lanes: %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"data-lanes must be in 1-4 range\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rcar_csi2*, %struct.v4l2_fwnode_endpoint*)* @rcsi2_parse_v4l2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcsi2_parse_v4l2(%struct.rcar_csi2* %0, %struct.v4l2_fwnode_endpoint* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rcar_csi2*, align 8
  %5 = alloca %struct.v4l2_fwnode_endpoint*, align 8
  %6 = alloca i32, align 4
  store %struct.rcar_csi2* %0, %struct.rcar_csi2** %4, align 8
  store %struct.v4l2_fwnode_endpoint* %1, %struct.v4l2_fwnode_endpoint** %5, align 8
  %7 = load %struct.v4l2_fwnode_endpoint*, %struct.v4l2_fwnode_endpoint** %5, align 8
  %8 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load %struct.v4l2_fwnode_endpoint*, %struct.v4l2_fwnode_endpoint** %5, align 8
  %14 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %12, %2
  %19 = load i32, i32* @ENOTCONN, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %132

21:                                               ; preds = %12
  %22 = load %struct.v4l2_fwnode_endpoint*, %struct.v4l2_fwnode_endpoint** %5, align 8
  %23 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @V4L2_MBUS_CSI2_DPHY, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %21
  %28 = load %struct.rcar_csi2*, %struct.rcar_csi2** %4, align 8
  %29 = getelementptr inbounds %struct.rcar_csi2, %struct.rcar_csi2* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.v4l2_fwnode_endpoint*, %struct.v4l2_fwnode_endpoint** %5, align 8
  %32 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 (i32, i8*, ...) @dev_err(i32 %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %132

37:                                               ; preds = %21
  %38 = load %struct.v4l2_fwnode_endpoint*, %struct.v4l2_fwnode_endpoint** %5, align 8
  %39 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.rcar_csi2*, %struct.rcar_csi2** %4, align 8
  %44 = getelementptr inbounds %struct.rcar_csi2, %struct.rcar_csi2* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.rcar_csi2*, %struct.rcar_csi2** %4, align 8
  %46 = getelementptr inbounds %struct.rcar_csi2, %struct.rcar_csi2* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 1
  br i1 %48, label %49, label %69

49:                                               ; preds = %37
  %50 = load %struct.rcar_csi2*, %struct.rcar_csi2** %4, align 8
  %51 = getelementptr inbounds %struct.rcar_csi2, %struct.rcar_csi2* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 2
  br i1 %53, label %54, label %69

54:                                               ; preds = %49
  %55 = load %struct.rcar_csi2*, %struct.rcar_csi2** %4, align 8
  %56 = getelementptr inbounds %struct.rcar_csi2, %struct.rcar_csi2* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 4
  br i1 %58, label %59, label %69

59:                                               ; preds = %54
  %60 = load %struct.rcar_csi2*, %struct.rcar_csi2** %4, align 8
  %61 = getelementptr inbounds %struct.rcar_csi2, %struct.rcar_csi2* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.rcar_csi2*, %struct.rcar_csi2** %4, align 8
  %64 = getelementptr inbounds %struct.rcar_csi2, %struct.rcar_csi2* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 (i32, i8*, ...) @dev_err(i32 %62, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %132

69:                                               ; preds = %54, %49, %37
  store i32 0, i32* %6, align 4
  br label %70

70:                                               ; preds = %128, %69
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.rcar_csi2*, %struct.rcar_csi2** %4, align 8
  %73 = getelementptr inbounds %struct.rcar_csi2, %struct.rcar_csi2* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @ARRAY_SIZE(i32* %74)
  %76 = icmp ult i32 %71, %75
  br i1 %76, label %77, label %131

77:                                               ; preds = %70
  %78 = load i32, i32* %6, align 4
  %79 = load %struct.rcar_csi2*, %struct.rcar_csi2** %4, align 8
  %80 = getelementptr inbounds %struct.rcar_csi2, %struct.rcar_csi2* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp ult i32 %78, %81
  br i1 %82, label %83, label %93

83:                                               ; preds = %77
  %84 = load %struct.v4l2_fwnode_endpoint*, %struct.v4l2_fwnode_endpoint** %5, align 8
  %85 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  br label %95

93:                                               ; preds = %77
  %94 = load i32, i32* %6, align 4
  br label %95

95:                                               ; preds = %93, %83
  %96 = phi i32 [ %92, %83 ], [ %94, %93 ]
  %97 = load %struct.rcar_csi2*, %struct.rcar_csi2** %4, align 8
  %98 = getelementptr inbounds %struct.rcar_csi2, %struct.rcar_csi2* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %6, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  store i32 %96, i32* %102, align 4
  %103 = load %struct.rcar_csi2*, %struct.rcar_csi2** %4, align 8
  %104 = getelementptr inbounds %struct.rcar_csi2, %struct.rcar_csi2* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %6, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = icmp ult i32 %109, 1
  br i1 %110, label %120, label %111

111:                                              ; preds = %95
  %112 = load %struct.rcar_csi2*, %struct.rcar_csi2** %4, align 8
  %113 = getelementptr inbounds %struct.rcar_csi2, %struct.rcar_csi2* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %6, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = icmp ugt i32 %118, 4
  br i1 %119, label %120, label %127

120:                                              ; preds = %111, %95
  %121 = load %struct.rcar_csi2*, %struct.rcar_csi2** %4, align 8
  %122 = getelementptr inbounds %struct.rcar_csi2, %struct.rcar_csi2* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = call i32 (i32, i8*, ...) @dev_err(i32 %123, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %3, align 4
  br label %132

127:                                              ; preds = %111
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %6, align 4
  %130 = add i32 %129, 1
  store i32 %130, i32* %6, align 4
  br label %70

131:                                              ; preds = %70
  store i32 0, i32* %3, align 4
  br label %132

132:                                              ; preds = %131, %120, %59, %27, %18
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
