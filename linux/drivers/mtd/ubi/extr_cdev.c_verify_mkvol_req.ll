; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_cdev.c_verify_mkvol_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_cdev.c_verify_mkvol_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i64, i32, i32 }
%struct.ubi_mkvol_req = type { i64, i32, i64, i32, i64, i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@UBI_VOL_NUM_AUTO = common dso_local global i64 0, align 8
@UBI_DYNAMIC_VOLUME = common dso_local global i64 0, align 8
@UBI_STATIC_VOLUME = common dso_local global i64 0, align 8
@UBI_VOL_VALID_FLGS = common dso_local global i32 0, align 4
@UBI_VOL_SKIP_CRC_CHECK_FLG = common dso_local global i32 0, align 4
@UBI_VOL_NAME_MAX = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"bad volume creation request\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_device*, %struct.ubi_mkvol_req*)* @verify_mkvol_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_mkvol_req(%struct.ubi_device* %0, %struct.ubi_mkvol_req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubi_device*, align 8
  %5 = alloca %struct.ubi_mkvol_req*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ubi_device* %0, %struct.ubi_device** %4, align 8
  store %struct.ubi_mkvol_req* %1, %struct.ubi_mkvol_req** %5, align 8
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load %struct.ubi_mkvol_req*, %struct.ubi_mkvol_req** %5, align 8
  %11 = getelementptr inbounds %struct.ubi_mkvol_req, %struct.ubi_mkvol_req* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %2
  %15 = load %struct.ubi_mkvol_req*, %struct.ubi_mkvol_req** %5, align 8
  %16 = getelementptr inbounds %struct.ubi_mkvol_req, %struct.ubi_mkvol_req* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %14
  %20 = load %struct.ubi_mkvol_req*, %struct.ubi_mkvol_req** %5, align 8
  %21 = getelementptr inbounds %struct.ubi_mkvol_req, %struct.ubi_mkvol_req* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load %struct.ubi_mkvol_req*, %struct.ubi_mkvol_req** %5, align 8
  %26 = getelementptr inbounds %struct.ubi_mkvol_req, %struct.ubi_mkvol_req* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24, %19, %14, %2
  br label %162

30:                                               ; preds = %24
  %31 = load %struct.ubi_mkvol_req*, %struct.ubi_mkvol_req** %5, align 8
  %32 = getelementptr inbounds %struct.ubi_mkvol_req, %struct.ubi_mkvol_req* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %30
  %36 = load %struct.ubi_mkvol_req*, %struct.ubi_mkvol_req** %5, align 8
  %37 = getelementptr inbounds %struct.ubi_mkvol_req, %struct.ubi_mkvol_req* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %40 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp sge i64 %38, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %35, %30
  %44 = load %struct.ubi_mkvol_req*, %struct.ubi_mkvol_req** %5, align 8
  %45 = getelementptr inbounds %struct.ubi_mkvol_req, %struct.ubi_mkvol_req* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @UBI_VOL_NUM_AUTO, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %162

50:                                               ; preds = %43, %35
  %51 = load %struct.ubi_mkvol_req*, %struct.ubi_mkvol_req** %5, align 8
  %52 = getelementptr inbounds %struct.ubi_mkvol_req, %struct.ubi_mkvol_req* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %162

56:                                               ; preds = %50
  %57 = load %struct.ubi_mkvol_req*, %struct.ubi_mkvol_req** %5, align 8
  %58 = getelementptr inbounds %struct.ubi_mkvol_req, %struct.ubi_mkvol_req* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %162

62:                                               ; preds = %56
  %63 = load %struct.ubi_mkvol_req*, %struct.ubi_mkvol_req** %5, align 8
  %64 = getelementptr inbounds %struct.ubi_mkvol_req, %struct.ubi_mkvol_req* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @UBI_DYNAMIC_VOLUME, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %62
  %69 = load %struct.ubi_mkvol_req*, %struct.ubi_mkvol_req** %5, align 8
  %70 = getelementptr inbounds %struct.ubi_mkvol_req, %struct.ubi_mkvol_req* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @UBI_STATIC_VOLUME, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  br label %162

75:                                               ; preds = %68, %62
  %76 = load %struct.ubi_mkvol_req*, %struct.ubi_mkvol_req** %5, align 8
  %77 = getelementptr inbounds %struct.ubi_mkvol_req, %struct.ubi_mkvol_req* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @UBI_VOL_VALID_FLGS, align 4
  %80 = xor i32 %79, -1
  %81 = and i32 %78, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  br label %162

84:                                               ; preds = %75
  %85 = load %struct.ubi_mkvol_req*, %struct.ubi_mkvol_req** %5, align 8
  %86 = getelementptr inbounds %struct.ubi_mkvol_req, %struct.ubi_mkvol_req* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @UBI_VOL_SKIP_CRC_CHECK_FLG, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %84
  %92 = load %struct.ubi_mkvol_req*, %struct.ubi_mkvol_req** %5, align 8
  %93 = getelementptr inbounds %struct.ubi_mkvol_req, %struct.ubi_mkvol_req* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @UBI_STATIC_VOLUME, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  br label %162

98:                                               ; preds = %91, %84
  %99 = load %struct.ubi_mkvol_req*, %struct.ubi_mkvol_req** %5, align 8
  %100 = getelementptr inbounds %struct.ubi_mkvol_req, %struct.ubi_mkvol_req* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %103 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = icmp sgt i32 %101, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %98
  br label %162

107:                                              ; preds = %98
  %108 = load %struct.ubi_mkvol_req*, %struct.ubi_mkvol_req** %5, align 8
  %109 = getelementptr inbounds %struct.ubi_mkvol_req, %struct.ubi_mkvol_req* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %112 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = sub nsw i32 %113, 1
  %115 = and i32 %110, %114
  store i32 %115, i32* %6, align 4
  %116 = load %struct.ubi_mkvol_req*, %struct.ubi_mkvol_req** %5, align 8
  %117 = getelementptr inbounds %struct.ubi_mkvol_req, %struct.ubi_mkvol_req* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 1
  br i1 %119, label %120, label %124

120:                                              ; preds = %107
  %121 = load i32, i32* %6, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  br label %162

124:                                              ; preds = %120, %107
  %125 = load %struct.ubi_mkvol_req*, %struct.ubi_mkvol_req** %5, align 8
  %126 = getelementptr inbounds %struct.ubi_mkvol_req, %struct.ubi_mkvol_req* %125, i32 0, i32 6
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 0
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %124
  %132 = load %struct.ubi_mkvol_req*, %struct.ubi_mkvol_req** %5, align 8
  %133 = getelementptr inbounds %struct.ubi_mkvol_req, %struct.ubi_mkvol_req* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %131, %124
  br label %162

137:                                              ; preds = %131
  %138 = load %struct.ubi_mkvol_req*, %struct.ubi_mkvol_req** %5, align 8
  %139 = getelementptr inbounds %struct.ubi_mkvol_req, %struct.ubi_mkvol_req* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @UBI_VOL_NAME_MAX, align 4
  %142 = icmp sgt i32 %140, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %137
  %144 = load i32, i32* @ENAMETOOLONG, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %7, align 4
  br label %162

146:                                              ; preds = %137
  %147 = load %struct.ubi_mkvol_req*, %struct.ubi_mkvol_req** %5, align 8
  %148 = getelementptr inbounds %struct.ubi_mkvol_req, %struct.ubi_mkvol_req* %147, i32 0, i32 6
  %149 = load i32*, i32** %148, align 8
  %150 = load %struct.ubi_mkvol_req*, %struct.ubi_mkvol_req** %5, align 8
  %151 = getelementptr inbounds %struct.ubi_mkvol_req, %struct.ubi_mkvol_req* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = add nsw i32 %152, 1
  %154 = call i32 @strnlen(i32* %149, i32 %153)
  store i32 %154, i32* %6, align 4
  %155 = load i32, i32* %6, align 4
  %156 = load %struct.ubi_mkvol_req*, %struct.ubi_mkvol_req** %5, align 8
  %157 = getelementptr inbounds %struct.ubi_mkvol_req, %struct.ubi_mkvol_req* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = icmp ne i32 %155, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %146
  br label %162

161:                                              ; preds = %146
  store i32 0, i32* %3, align 4
  br label %168

162:                                              ; preds = %160, %143, %136, %123, %106, %97, %83, %74, %61, %55, %49, %29
  %163 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %164 = call i32 @ubi_err(%struct.ubi_device* %163, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %165 = load %struct.ubi_mkvol_req*, %struct.ubi_mkvol_req** %5, align 8
  %166 = call i32 @ubi_dump_mkvol_req(%struct.ubi_mkvol_req* %165)
  %167 = load i32, i32* %7, align 4
  store i32 %167, i32* %3, align 4
  br label %168

168:                                              ; preds = %162, %161
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

declare dso_local i32 @strnlen(i32*, i32) #1

declare dso_local i32 @ubi_err(%struct.ubi_device*, i8*) #1

declare dso_local i32 @ubi_dump_mkvol_req(%struct.ubi_mkvol_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
