; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-main.c_vxge_alloc_msix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-main.c_vxge_alloc_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxgedev = type { i32, i32, %struct.TYPE_3__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@VXGE_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"%s: memory allocation failed\00", align 1
@VXGE_DRIVER_NAME = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VXGE_HW_VPATH_MSIX_ACTIVE = common dso_local global i32 0, align 4
@VXGE_ALARM_MSIX_ID = common dso_local global i8* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"%s: MSI-X enable failed for %d vectors, ret: %d\00", align 1
@max_config_vpath = common dso_local global i64 0, align 8
@VXGE_USE_DEFAULT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vxgedev*)* @vxge_alloc_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxge_alloc_msix(%struct.vxgedev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vxgedev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vxgedev* %0, %struct.vxgedev** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %10 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %9, i32 0, i32 0
  store i32 0, i32* %10, align 8
  br label %11

11:                                               ; preds = %190, %1
  %12 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %13 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = mul nsw i32 %14, 2
  %16 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %17 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %19 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 8
  %22 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %23 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i8* @kcalloc(i32 %24, i32 4, i32 %25)
  %27 = bitcast i8* %26 to %struct.TYPE_3__*
  %28 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %29 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %28, i32 0, i32 2
  store %struct.TYPE_3__* %27, %struct.TYPE_3__** %29, align 8
  %30 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %31 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %30, i32 0, i32 2
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = icmp ne %struct.TYPE_3__* %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %11
  %35 = load i32, i32* @VXGE_ERR, align 4
  %36 = load i32, i32* @VXGE_DRIVER_NAME, align 4
  %37 = call i32 (i32, i8*, i32, ...) @vxge_debug_init(i32 %35, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  br label %224

40:                                               ; preds = %11
  %41 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %42 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call i8* @kcalloc(i32 %43, i32 4, i32 %44)
  %46 = bitcast i8* %45 to %struct.TYPE_3__*
  %47 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %48 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %47, i32 0, i32 3
  store %struct.TYPE_3__* %46, %struct.TYPE_3__** %48, align 8
  %49 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %50 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %49, i32 0, i32 3
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = icmp ne %struct.TYPE_3__* %51, null
  br i1 %52, label %59, label %53

53:                                               ; preds = %40
  %54 = load i32, i32* @VXGE_ERR, align 4
  %55 = load i32, i32* @VXGE_DRIVER_NAME, align 4
  %56 = call i32 (i32, i8*, i32, ...) @vxge_debug_init(i32 %54, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %6, align 4
  br label %219

59:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %122, %59
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %63 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %125

66:                                               ; preds = %60
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @VXGE_HW_VPATH_MSIX_ACTIVE, align 4
  %69 = mul nsw i32 %67, %68
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %72 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %71, i32 0, i32 2
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  store i32 %70, i32* %77, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %80 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %79, i32 0, i32 3
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  store i32 %78, i32* %85, align 8
  %86 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %87 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %86, i32 0, i32 3
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = load i32, i32* %4, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  store i64 0, i64* %92, align 8
  %93 = load i32, i32* %4, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %4, align 4
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, 1
  %97 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %98 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %97, i32 0, i32 2
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = load i32, i32* %4, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  store i32 %96, i32* %103, align 8
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %104, 1
  %106 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %107 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %106, i32 0, i32 3
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %107, align 8
  %109 = load i32, i32* %4, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  store i32 %105, i32* %112, align 8
  %113 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %114 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %113, i32 0, i32 3
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = load i32, i32* %4, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 1
  store i64 0, i64* %119, align 8
  %120 = load i32, i32* %4, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %4, align 4
  br label %122

122:                                              ; preds = %66
  %123 = load i32, i32* %5, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %5, align 4
  br label %60

125:                                              ; preds = %60
  %126 = load i8*, i8** @VXGE_ALARM_MSIX_ID, align 8
  %127 = ptrtoint i8* %126 to i32
  %128 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %129 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %128, i32 0, i32 2
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %129, align 8
  %131 = load i32, i32* %4, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  store i32 %127, i32* %134, align 8
  %135 = load i8*, i8** @VXGE_ALARM_MSIX_ID, align 8
  %136 = ptrtoint i8* %135 to i32
  %137 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %138 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %137, i32 0, i32 3
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %138, align 8
  %140 = load i32, i32* %4, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  store i32 %136, i32* %143, align 8
  %144 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %145 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %144, i32 0, i32 3
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %145, align 8
  %147 = load i32, i32* %4, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 1
  store i64 0, i64* %150, align 8
  %151 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %152 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %155 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %154, i32 0, i32 2
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %155, align 8
  %157 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %158 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @pci_enable_msix_range(i32 %153, %struct.TYPE_3__* %156, i32 3, i32 %159)
  store i32 %160, i32* %6, align 4
  %161 = load i32, i32* %6, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %125
  %164 = load i32, i32* @ENODEV, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %6, align 4
  br label %214

166:                                              ; preds = %125
  %167 = load i32, i32* %6, align 4
  %168 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %169 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = icmp slt i32 %167, %170
  br i1 %171, label %172, label %212

172:                                              ; preds = %166
  %173 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %174 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @pci_disable_msix(i32 %175)
  %177 = load i32, i32* @VXGE_ERR, align 4
  %178 = load i32, i32* @VXGE_DRIVER_NAME, align 4
  %179 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %180 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* %6, align 4
  %183 = call i32 (i32, i8*, i32, ...) @vxge_debug_init(i32 %177, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %178, i32 %181, i32 %182)
  %184 = load i64, i64* @max_config_vpath, align 8
  %185 = load i64, i64* @VXGE_USE_DEFAULT, align 8
  %186 = icmp ne i64 %184, %185
  br i1 %186, label %187, label %190

187:                                              ; preds = %172
  %188 = load i32, i32* @ENODEV, align 4
  %189 = sub nsw i32 0, %188
  store i32 %189, i32* %6, align 4
  br label %214

190:                                              ; preds = %172
  %191 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %192 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %191, i32 0, i32 2
  %193 = load %struct.TYPE_3__*, %struct.TYPE_3__** %192, align 8
  %194 = call i32 @kfree(%struct.TYPE_3__* %193)
  %195 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %196 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %195, i32 0, i32 3
  %197 = load %struct.TYPE_3__*, %struct.TYPE_3__** %196, align 8
  %198 = call i32 @kfree(%struct.TYPE_3__* %197)
  %199 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %200 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %199, i32 0, i32 2
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %200, align 8
  %201 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %202 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %201, i32 0, i32 3
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %202, align 8
  %203 = load i32, i32* %6, align 4
  %204 = sub nsw i32 %203, 1
  %205 = sdiv i32 %204, 2
  store i32 %205, i32* %8, align 4
  %206 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %207 = load i32, i32* %8, align 4
  %208 = call i32 @vxge_close_vpaths(%struct.vxgedev* %206, i32 %207)
  %209 = load i32, i32* %8, align 4
  %210 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %211 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %210, i32 0, i32 1
  store i32 %209, i32* %211, align 4
  br label %11

212:                                              ; preds = %166
  br label %213

213:                                              ; preds = %212
  store i32 0, i32* %2, align 4
  br label %226

214:                                              ; preds = %187, %163
  %215 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %216 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %215, i32 0, i32 3
  %217 = load %struct.TYPE_3__*, %struct.TYPE_3__** %216, align 8
  %218 = call i32 @kfree(%struct.TYPE_3__* %217)
  br label %219

219:                                              ; preds = %214, %53
  %220 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %221 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %220, i32 0, i32 2
  %222 = load %struct.TYPE_3__*, %struct.TYPE_3__** %221, align 8
  %223 = call i32 @kfree(%struct.TYPE_3__* %222)
  br label %224

224:                                              ; preds = %219, %34
  %225 = load i32, i32* %6, align 4
  store i32 %225, i32* %2, align 4
  br label %226

226:                                              ; preds = %224, %213
  %227 = load i32, i32* %2, align 4
  ret i32 %227
}

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @vxge_debug_init(i32, i8*, i32, ...) #1

declare dso_local i32 @pci_enable_msix_range(i32, %struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @pci_disable_msix(i32) #1

declare dso_local i32 @kfree(%struct.TYPE_3__*) #1

declare dso_local i32 @vxge_close_vpaths(%struct.vxgedev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
