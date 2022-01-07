; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/extr_defxx.c_dfx_ctl_update_cam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/extr_defxx.c_dfx_ctl_update_cam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32*, i64, i32*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32* }

@PI_CMD_REQ_K_SIZE_MAX = common dso_local global i32 0, align 4
@PI_CMD_K_ADDR_FILTER_SET = common dso_local global i32 0, align 4
@PI_CMD_ADDR_FILTER_K_SIZE = common dso_local global i32 0, align 4
@FDDI_K_ALEN = common dso_local global i32 0, align 4
@DFX_K_SUCCESS = common dso_local global i64 0, align 8
@DFX_K_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @dfx_ctl_update_cam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dfx_ctl_update_cam(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 4
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %9 = load i32, i32* @PI_CMD_REQ_K_SIZE_MAX, align 4
  %10 = call i32 @memset(%struct.TYPE_8__* %8, i32 0, i32 %9)
  %11 = load i32, i32* @PI_CMD_K_ADDR_FILTER_SET, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  store i32 %11, i32* %15, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  store i32* %22, i32** %5, align 8
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %48, %1
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %51

29:                                               ; preds = %23
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @PI_CMD_ADDR_FILTER_K_SIZE, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %29
  %34 = load i32*, i32** %5, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @FDDI_K_ALEN, align 4
  %40 = mul nsw i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %37, i64 %41
  %43 = load i32, i32* @FDDI_K_ALEN, align 4
  %44 = call i32 @memcpy(i32* %34, i32* %42, i32 %43)
  %45 = load i32*, i32** %5, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %5, align 8
  br label %47

47:                                               ; preds = %33, %29
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %4, align 4
  br label %23

51:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %82, %51
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = icmp slt i32 %53, %57
  br i1 %58, label %59, label %85

59:                                               ; preds = %52
  %60 = load i32, i32* %4, align 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %60, %63
  %65 = load i32, i32* @PI_CMD_ADDR_FILTER_K_SIZE, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %81

67:                                               ; preds = %59
  %68 = load i32*, i32** %5, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @FDDI_K_ALEN, align 4
  %74 = mul nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %71, i64 %75
  %77 = load i32, i32* @FDDI_K_ALEN, align 4
  %78 = call i32 @memcpy(i32* %68, i32* %76, i32 %77)
  %79 = load i32*, i32** %5, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %5, align 8
  br label %81

81:                                               ; preds = %67, %59
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %4, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %4, align 4
  br label %52

85:                                               ; preds = %52
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %87 = call i64 @dfx_hw_dma_cmd_req(%struct.TYPE_7__* %86)
  %88 = load i64, i64* @DFX_K_SUCCESS, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = load i32, i32* @DFX_K_FAILURE, align 4
  store i32 %91, i32* %2, align 4
  br label %95

92:                                               ; preds = %85
  %93 = load i64, i64* @DFX_K_SUCCESS, align 8
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %92, %90
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @dfx_hw_dma_cmd_req(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
