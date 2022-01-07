; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_hw.c_orinoco_hw_get_essid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_hw.c_orinoco_hw_get_essid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.orinoco_private = type { i32, i32, %struct.hermes }
%struct.hermes = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.hermes*, i32, i32, i32, i32*, %struct.hermes_idstring*)* }
%struct.hermes_idstring = type { i32, i32 }

@IW_ESSID_MAX_SIZE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@HERMES_RID_CNFOWNSSID = common dso_local global i32 0, align 4
@HERMES_RID_CNFDESIREDSSID = common dso_local global i32 0, align 4
@USER_BAP = common dso_local global i32 0, align 4
@HERMES_RID_CURRENTSSID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @orinoco_hw_get_essid(%struct.orinoco_private* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.orinoco_private*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.hermes*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.hermes_idstring, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.orinoco_private* %0, %struct.orinoco_private** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load i32, i32* @IW_ESSID_MAX_SIZE, align 4
  %16 = add nsw i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = load %struct.orinoco_private*, %struct.orinoco_private** %5, align 8
  %19 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %18, i32 0, i32 2
  store %struct.hermes* %19, %struct.hermes** %8, align 8
  store i32 0, i32* %9, align 4
  %20 = getelementptr inbounds %struct.hermes_idstring, %struct.hermes_idstring* %10, i32 0, i32 1
  %21 = bitcast i32* %20 to i8*
  store i8* %21, i8** %11, align 8
  %22 = load %struct.orinoco_private*, %struct.orinoco_private** %5, align 8
  %23 = call i64 @orinoco_lock(%struct.orinoco_private* %22, i64* %13)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %95

28:                                               ; preds = %3
  %29 = load %struct.orinoco_private*, %struct.orinoco_private** %5, align 8
  %30 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @strlen(i32 %31)
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %59

34:                                               ; preds = %28
  %35 = load i32*, i32** %6, align 8
  store i32 1, i32* %35, align 4
  %36 = load %struct.orinoco_private*, %struct.orinoco_private** %5, align 8
  %37 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 3
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @HERMES_RID_CNFOWNSSID, align 4
  br label %44

42:                                               ; preds = %34
  %43 = load i32, i32* @HERMES_RID_CNFDESIREDSSID, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  store i32 %45, i32* %14, align 4
  %46 = load %struct.hermes*, %struct.hermes** %8, align 8
  %47 = getelementptr inbounds %struct.hermes, %struct.hermes* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32 (%struct.hermes*, i32, i32, i32, i32*, %struct.hermes_idstring*)*, i32 (%struct.hermes*, i32, i32, i32, i32*, %struct.hermes_idstring*)** %49, align 8
  %51 = load %struct.hermes*, %struct.hermes** %8, align 8
  %52 = load i32, i32* @USER_BAP, align 4
  %53 = load i32, i32* %14, align 4
  %54 = call i32 %50(%struct.hermes* %51, i32 %52, i32 %53, i32 8, i32* null, %struct.hermes_idstring* %10)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %44
  br label %91

58:                                               ; preds = %44
  br label %74

59:                                               ; preds = %28
  %60 = load i32*, i32** %6, align 8
  store i32 0, i32* %60, align 4
  %61 = load %struct.hermes*, %struct.hermes** %8, align 8
  %62 = getelementptr inbounds %struct.hermes, %struct.hermes* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32 (%struct.hermes*, i32, i32, i32, i32*, %struct.hermes_idstring*)*, i32 (%struct.hermes*, i32, i32, i32, i32*, %struct.hermes_idstring*)** %64, align 8
  %66 = load %struct.hermes*, %struct.hermes** %8, align 8
  %67 = load i32, i32* @USER_BAP, align 4
  %68 = load i32, i32* @HERMES_RID_CURRENTSSID, align 4
  %69 = call i32 %65(%struct.hermes* %66, i32 %67, i32 %68, i32 8, i32* null, %struct.hermes_idstring* %10)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %59
  br label %91

73:                                               ; preds = %59
  br label %74

74:                                               ; preds = %73, %58
  %75 = getelementptr inbounds %struct.hermes_idstring, %struct.hermes_idstring* %10, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @le16_to_cpu(i32 %76)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* @IW_ESSID_MAX_SIZE, align 4
  %80 = icmp sgt i32 %78, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @BUG_ON(i32 %81)
  %83 = load i8*, i8** %7, align 8
  %84 = load i32, i32* @IW_ESSID_MAX_SIZE, align 4
  %85 = call i32 @memset(i8* %83, i32 0, i32 %84)
  %86 = load i8*, i8** %7, align 8
  %87 = load i8*, i8** %11, align 8
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @memcpy(i8* %86, i8* %87, i32 %88)
  %90 = load i32, i32* %12, align 4
  store i32 %90, i32* %9, align 4
  br label %91

91:                                               ; preds = %74, %72, %57
  %92 = load %struct.orinoco_private*, %struct.orinoco_private** %5, align 8
  %93 = call i32 @orinoco_unlock(%struct.orinoco_private* %92, i64* %13)
  %94 = load i32, i32* %9, align 4
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %91, %25
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i64 @orinoco_lock(%struct.orinoco_private*, i64*) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @orinoco_unlock(%struct.orinoco_private*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
