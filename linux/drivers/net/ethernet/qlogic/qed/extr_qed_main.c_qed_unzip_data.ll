; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_main.c_qed_unzip_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_main.c_qed_unzip_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32*, i32* }

@MAX_WBITS = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@NETIF_MSG_DRV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"zlib init failed, rc = %d\0A\00", align 1
@Z_FINISH = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"FW unzip error: %s, rc=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_unzip_data(%struct.qed_hwfn* %0, i32 %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.qed_hwfn*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %13 = load i32*, i32** %9, align 8
  %14 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %15 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 5
  store i32* %13, i32** %17, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %20 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i32 %18, i32* %22, align 8
  %23 = load i32*, i32** %11, align 8
  %24 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %25 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 4
  store i32* %23, i32** %27, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %30 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  store i32 %28, i32* %32, align 4
  %33 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %34 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load i32, i32* @MAX_WBITS, align 4
  %37 = call i32 @zlib_inflateInit2(%struct.TYPE_4__* %35, i32 %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* @Z_OK, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %5
  %42 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %43 = load i32, i32* @NETIF_MSG_DRV, align 4
  %44 = load i32, i32* %12, align 4
  %45 = call i32 (%struct.qed_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.qed_hwfn* %42, i32 %43, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %44)
  store i32 0, i32* %6, align 4
  br label %80

46:                                               ; preds = %5
  %47 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %48 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = load i32, i32* @Z_FINISH, align 4
  %51 = call i32 @zlib_inflate(%struct.TYPE_4__* %49, i32 %50)
  store i32 %51, i32* %12, align 4
  %52 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %53 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = call i32 @zlib_inflateEnd(%struct.TYPE_4__* %54)
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* @Z_OK, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %73

59:                                               ; preds = %46
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* @Z_STREAM_END, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %59
  %64 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %65 = load i32, i32* @NETIF_MSG_DRV, align 4
  %66 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %67 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %12, align 4
  %72 = call i32 (%struct.qed_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.qed_hwfn* %64, i32 %65, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %70, i32 %71)
  store i32 0, i32* %6, align 4
  br label %80

73:                                               ; preds = %59, %46
  %74 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %75 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = sdiv i32 %78, 4
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %73, %63, %41
  %81 = load i32, i32* %6, align 4
  ret i32 %81
}

declare dso_local i32 @zlib_inflateInit2(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32, ...) #1

declare dso_local i32 @zlib_inflate(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @zlib_inflateEnd(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
