; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_mac.c_hns_mac_get_inner_port_num.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_mac.c_hns_mac_get_inner_port_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_mac_cb = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, %struct.TYPE_4__** }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@DSAF_MODE_ENABLE = common dso_local global i32 0, align 4
@DSAF_MAX_PORT_NUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"input invalid, %s mac%d vmid%d !\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DSAF_MODE_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"input invalid, %s mac%d vmid%d!\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"dsaf mode invalid, %s mac%d!\0A\00", align 1
@DSAF_BASE_INNER_PORT_NUM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hns_mac_get_inner_port_num(%struct.hns_mac_cb* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hns_mac_cb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hns_mac_cb* %0, %struct.hns_mac_cb** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %5, align 8
  %13 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %12, i32 0, i32 1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @DSAF_MODE_ENABLE, align 4
  %18 = icmp sle i32 %16, %17
  br i1 %18, label %19, label %43

19:                                               ; preds = %3
  %20 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %5, align 8
  %21 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @DSAF_MAX_PORT_NUM, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %19
  %26 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %5, align 8
  %27 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %5, align 8
  %30 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %29, i32 0, i32 1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %5, align 8
  %36 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 (i32, i8*, i32, i32, ...) @dev_err(i32 %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %37, i32 %38)
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %184

42:                                               ; preds = %19
  br label %92

43:                                               ; preds = %3
  %44 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %5, align 8
  %45 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %44, i32 0, i32 1
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @DSAF_MODE_MAX, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %75

51:                                               ; preds = %43
  %52 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %5, align 8
  %53 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @DSAF_MAX_PORT_NUM, align 4
  %56 = icmp sge i32 %54, %55
  br i1 %56, label %57, label %74

57:                                               ; preds = %51
  %58 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %5, align 8
  %59 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %5, align 8
  %62 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %61, i32 0, i32 1
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %5, align 8
  %68 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call i32 (i32, i8*, i32, i32, ...) @dev_err(i32 %60, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %69, i32 %70)
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %184

74:                                               ; preds = %51
  br label %91

75:                                               ; preds = %43
  %76 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %5, align 8
  %77 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %5, align 8
  %80 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %79, i32 0, i32 1
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %5, align 8
  %86 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 (i32, i8*, i32, i32, ...) @dev_err(i32 %78, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %84, i32 %87)
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %4, align 4
  br label %184

91:                                               ; preds = %74
  br label %92

92:                                               ; preds = %91, %42
  %93 = load i32, i32* %6, align 4
  %94 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %5, align 8
  %95 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %94, i32 0, i32 1
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 2
  %98 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %98, i64 0
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp sge i32 %93, %102
  br i1 %103, label %104, label %121

104:                                              ; preds = %92
  %105 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %5, align 8
  %106 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %5, align 8
  %109 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %108, i32 0, i32 1
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %5, align 8
  %115 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %6, align 4
  %118 = call i32 (i32, i8*, i32, i32, ...) @dev_err(i32 %107, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %113, i32 %116, i32 %117)
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %4, align 4
  br label %184

121:                                              ; preds = %92
  %122 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %5, align 8
  %123 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %122, i32 0, i32 1
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 2
  %126 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %126, i64 0
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %8, align 4
  %131 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %5, align 8
  %132 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %131, i32 0, i32 1
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 2
  %135 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %135, i64 0
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %9, align 4
  %140 = load i32, i32* %6, align 4
  %141 = load i32, i32* %8, align 4
  %142 = mul nsw i32 %140, %141
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* %8, align 4
  %145 = mul nsw i32 %143, %144
  %146 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %5, align 8
  %147 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = mul nsw i32 %145, %148
  %150 = add nsw i32 %142, %149
  store i32 %150, i32* %10, align 4
  %151 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %5, align 8
  %152 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %151, i32 0, i32 1
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  switch i32 %155, label %160 [
    i32 128, label %156
    i32 134, label %157
    i32 133, label %158
    i32 129, label %158
    i32 131, label %158
    i32 130, label %158
    i32 132, label %158
    i32 139, label %158
    i32 141, label %158
    i32 140, label %158
    i32 138, label %158
    i32 136, label %158
    i32 135, label %158
    i32 137, label %158
  ]

156:                                              ; preds = %121
  store i32 0, i32* %11, align 4
  br label %176

157:                                              ; preds = %121
  store i32 0, i32* %11, align 4
  br label %176

158:                                              ; preds = %121, %121, %121, %121, %121, %121, %121, %121, %121, %121, %121, %121
  %159 = load i32, i32* %10, align 4
  store i32 %159, i32* %11, align 4
  br label %176

160:                                              ; preds = %121
  %161 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %5, align 8
  %162 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %5, align 8
  %165 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %164, i32 0, i32 1
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %5, align 8
  %171 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = call i32 (i32, i8*, i32, i32, ...) @dev_err(i32 %163, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %169, i32 %172)
  %174 = load i32, i32* @EINVAL, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %4, align 4
  br label %184

176:                                              ; preds = %158, %157, %156
  %177 = load i64, i64* @DSAF_BASE_INNER_PORT_NUM, align 8
  %178 = load i32, i32* %11, align 4
  %179 = sext i32 %178 to i64
  %180 = add nsw i64 %179, %177
  %181 = trunc i64 %180 to i32
  store i32 %181, i32* %11, align 4
  %182 = load i32, i32* %11, align 4
  %183 = load i32*, i32** %7, align 8
  store i32 %182, i32* %183, align 4
  store i32 0, i32* %4, align 4
  br label %184

184:                                              ; preds = %176, %160, %104, %75, %57, %25
  %185 = load i32, i32* %4, align 4
  ret i32 %185
}

declare dso_local i32 @dev_err(i32, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
