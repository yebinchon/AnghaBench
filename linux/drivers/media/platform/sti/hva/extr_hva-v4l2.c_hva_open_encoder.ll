; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-v4l2.c_hva_open_encoder.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-v4l2.c_hva_open_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hva_ctx = type { i32 }
%struct.hva_enc = type { i32 (%struct.hva_ctx.0*)*, i32 }
%struct.hva_ctx.0 = type opaque
%struct.hva_dev = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"%s no encoder found matching %4.4s => %4.4s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"%s one encoder matching %4.4s => %4.4s\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"[%3d:%4.4s]\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"%s failed to open encoder instance (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"%s %s encoder opened\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hva_ctx*, i32, i32, %struct.hva_enc**)* @hva_open_encoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hva_open_encoder(%struct.hva_ctx* %0, i32 %1, i32 %2, %struct.hva_enc** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hva_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hva_enc**, align 8
  %10 = alloca %struct.hva_dev*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca %struct.hva_enc*, align 8
  %13 = alloca i32, align 4
  store %struct.hva_ctx* %0, %struct.hva_ctx** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.hva_enc** %3, %struct.hva_enc*** %9, align 8
  %14 = load %struct.hva_ctx*, %struct.hva_ctx** %6, align 8
  %15 = call %struct.hva_dev* @ctx_to_hdev(%struct.hva_ctx* %14)
  store %struct.hva_dev* %15, %struct.hva_dev** %10, align 8
  %16 = load %struct.hva_ctx*, %struct.hva_ctx** %6, align 8
  %17 = call %struct.device* @ctx_to_dev(%struct.hva_ctx* %16)
  store %struct.device* %17, %struct.device** %11, align 8
  %18 = load %struct.hva_ctx*, %struct.hva_ctx** %6, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i64 @hva_find_encoder(%struct.hva_ctx* %18, i32 %19, i32 %20)
  %22 = inttoptr i64 %21 to %struct.hva_enc*
  store %struct.hva_enc* %22, %struct.hva_enc** %12, align 8
  %23 = load %struct.hva_enc*, %struct.hva_enc** %12, align 8
  %24 = icmp ne %struct.hva_enc* %23, null
  br i1 %24, label %35, label %25

25:                                               ; preds = %4
  %26 = load %struct.device*, %struct.device** %11, align 8
  %27 = load %struct.hva_ctx*, %struct.hva_ctx** %6, align 8
  %28 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = bitcast i32* %8 to i8*
  %31 = bitcast i32* %7 to i8*
  %32 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %26, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %29, i8* %30, i8* %31)
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %81

35:                                               ; preds = %4
  %36 = load %struct.device*, %struct.device** %11, align 8
  %37 = load %struct.hva_ctx*, %struct.hva_ctx** %6, align 8
  %38 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = bitcast i32* %8 to i8*
  %41 = bitcast i32* %7 to i8*
  %42 = call i32 (%struct.device*, i8*, i32, i8*, ...) @dev_dbg(%struct.device* %36, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %39, i8* %40, i8* %41)
  %43 = load %struct.hva_ctx*, %struct.hva_ctx** %6, align 8
  %44 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.hva_dev*, %struct.hva_dev** %10, align 8
  %47 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = bitcast i32* %7 to i8*
  %50 = call i32 @snprintf(i32 %45, i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %48, i8* %49)
  %51 = load %struct.hva_enc*, %struct.hva_enc** %12, align 8
  %52 = getelementptr inbounds %struct.hva_enc, %struct.hva_enc* %51, i32 0, i32 0
  %53 = load i32 (%struct.hva_ctx.0*)*, i32 (%struct.hva_ctx.0*)** %52, align 8
  %54 = load %struct.hva_ctx*, %struct.hva_ctx** %6, align 8
  %55 = bitcast %struct.hva_ctx* %54 to %struct.hva_ctx.0*
  %56 = call i32 %53(%struct.hva_ctx.0* %55)
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %35
  %60 = load %struct.device*, %struct.device** %11, align 8
  %61 = load %struct.hva_ctx*, %struct.hva_ctx** %6, align 8
  %62 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %13, align 4
  %65 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %60, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %63, i32 %64)
  %66 = load i32, i32* %13, align 4
  store i32 %66, i32* %5, align 4
  br label %81

67:                                               ; preds = %35
  %68 = load %struct.device*, %struct.device** %11, align 8
  %69 = load %struct.hva_ctx*, %struct.hva_ctx** %6, align 8
  %70 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.hva_enc*, %struct.hva_enc** %12, align 8
  %73 = getelementptr inbounds %struct.hva_enc, %struct.hva_enc* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = inttoptr i64 %75 to i8*
  %77 = call i32 (%struct.device*, i8*, i32, i8*, ...) @dev_dbg(%struct.device* %68, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %71, i8* %76)
  %78 = load %struct.hva_enc*, %struct.hva_enc** %12, align 8
  %79 = load %struct.hva_enc**, %struct.hva_enc*** %9, align 8
  store %struct.hva_enc* %78, %struct.hva_enc** %79, align 8
  %80 = load i32, i32* %13, align 4
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %67, %59, %25
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local %struct.hva_dev* @ctx_to_hdev(%struct.hva_ctx*) #1

declare dso_local %struct.device* @ctx_to_dev(%struct.hva_ctx*) #1

declare dso_local i64 @hva_find_encoder(%struct.hva_ctx*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i8*, ...) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
