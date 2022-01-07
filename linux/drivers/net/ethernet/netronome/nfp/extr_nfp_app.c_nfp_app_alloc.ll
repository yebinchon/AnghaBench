; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_app.c_nfp_app_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_app.c_nfp_app_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i32 }
%struct.nfp_app = type { %struct.TYPE_3__*, i32, i32, %struct.nfp_pf* }
%struct.nfp_pf = type { i32, i32 }

@apps = common dso_local global %struct.TYPE_3__** null, align 8
@.str = private unnamed_addr constant [75 x i8] c"unknown FW app ID 0x%02hhx, driver too old or support for FW not built in\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nfp_app* @nfp_app_alloc(%struct.nfp_pf* %0, i32 %1) #0 {
  %3 = alloca %struct.nfp_app*, align 8
  %4 = alloca %struct.nfp_pf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfp_app*, align 8
  store %struct.nfp_pf* %0, %struct.nfp_pf** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @apps, align 8
  %9 = call i32 @ARRAY_SIZE(%struct.TYPE_3__** %8)
  %10 = icmp uge i32 %7, %9
  br i1 %10, label %18, label %11

11:                                               ; preds = %2
  %12 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @apps, align 8
  %13 = load i32, i32* %5, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %12, i64 %14
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = icmp ne %struct.TYPE_3__* %16, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %11, %2
  %19 = load %struct.nfp_pf*, %struct.nfp_pf** %4, align 8
  %20 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @nfp_err(i32 %21, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.nfp_app* @ERR_PTR(i32 %25)
  store %struct.nfp_app* %26, %struct.nfp_app** %3, align 8
  br label %113

27:                                               ; preds = %11
  %28 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @apps, align 8
  %29 = load i32, i32* %5, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %28, i64 %30
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %27
  %37 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @apps, align 8
  %38 = load i32, i32* %5, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %37, i64 %39
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  br label %46

46:                                               ; preds = %36, %27
  %47 = phi i1 [ true, %27 ], [ %45, %36 ]
  %48 = zext i1 %47 to i32
  %49 = call i64 @WARN_ON(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  %54 = call %struct.nfp_app* @ERR_PTR(i32 %53)
  store %struct.nfp_app* %54, %struct.nfp_app** %3, align 8
  br label %113

55:                                               ; preds = %46
  %56 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @apps, align 8
  %57 = load i32, i32* %5, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %56, i64 %58
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %73, label %64

64:                                               ; preds = %55
  %65 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @apps, align 8
  %66 = load i32, i32* %5, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %65, i64 %67
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br label %73

73:                                               ; preds = %64, %55
  %74 = phi i1 [ false, %55 ], [ %72, %64 ]
  %75 = zext i1 %74 to i32
  %76 = call i64 @WARN_ON(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  %81 = call %struct.nfp_app* @ERR_PTR(i32 %80)
  store %struct.nfp_app* %81, %struct.nfp_app** %3, align 8
  br label %113

82:                                               ; preds = %73
  %83 = load i32, i32* @GFP_KERNEL, align 4
  %84 = call %struct.nfp_app* @kzalloc(i32 24, i32 %83)
  store %struct.nfp_app* %84, %struct.nfp_app** %6, align 8
  %85 = load %struct.nfp_app*, %struct.nfp_app** %6, align 8
  %86 = icmp ne %struct.nfp_app* %85, null
  br i1 %86, label %91, label %87

87:                                               ; preds = %82
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = sub nsw i32 0, %88
  %90 = call %struct.nfp_app* @ERR_PTR(i32 %89)
  store %struct.nfp_app* %90, %struct.nfp_app** %3, align 8
  br label %113

91:                                               ; preds = %82
  %92 = load %struct.nfp_pf*, %struct.nfp_pf** %4, align 8
  %93 = load %struct.nfp_app*, %struct.nfp_app** %6, align 8
  %94 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %93, i32 0, i32 3
  store %struct.nfp_pf* %92, %struct.nfp_pf** %94, align 8
  %95 = load %struct.nfp_pf*, %struct.nfp_pf** %4, align 8
  %96 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.nfp_app*, %struct.nfp_app** %6, align 8
  %99 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 4
  %100 = load %struct.nfp_pf*, %struct.nfp_pf** %4, align 8
  %101 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.nfp_app*, %struct.nfp_app** %6, align 8
  %104 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 8
  %105 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @apps, align 8
  %106 = load i32, i32* %5, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %105, i64 %107
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  %110 = load %struct.nfp_app*, %struct.nfp_app** %6, align 8
  %111 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %110, i32 0, i32 0
  store %struct.TYPE_3__* %109, %struct.TYPE_3__** %111, align 8
  %112 = load %struct.nfp_app*, %struct.nfp_app** %6, align 8
  store %struct.nfp_app* %112, %struct.nfp_app** %3, align 8
  br label %113

113:                                              ; preds = %91, %87, %78, %51, %18
  %114 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  ret %struct.nfp_app* %114
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__**) #1

declare dso_local i32 @nfp_err(i32, i8*, i32) #1

declare dso_local %struct.nfp_app* @ERR_PTR(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.nfp_app* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
