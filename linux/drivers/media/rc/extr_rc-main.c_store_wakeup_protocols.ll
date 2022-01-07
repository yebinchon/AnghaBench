; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_rc-main.c_store_wakeup_protocols.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_rc-main.c_store_wakeup_protocols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }
%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.rc_dev = type { i64, i32, i64 (%struct.rc_dev*, %struct.TYPE_4__*)*, i32, %struct.TYPE_4__, i32, i64 }
%struct.TYPE_4__ = type { i32, i64 }

@RC_PROTO_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@protocols = common dso_local global %struct.TYPE_5__* null, align 8
@EINVAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Wakeup protocol changed to %d\0A\00", align 1
@RC_PROTO_RC6_MCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_wakeup_protocols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_wakeup_protocols(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.rc_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call %struct.rc_dev* @to_rc_dev(%struct.device* %15)
  store %struct.rc_dev* %16, %struct.rc_dev** %9, align 8
  %17 = load i32, i32* @RC_PROTO_UNKNOWN, align 4
  store i32 %17, i32* %10, align 4
  %18 = load %struct.rc_dev*, %struct.rc_dev** %9, align 8
  %19 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %18, i32 0, i32 3
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.rc_dev*, %struct.rc_dev** %9, align 8
  %22 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %12, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i64 @sysfs_streq(i8* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %81, label %27

27:                                               ; preds = %4
  store i32 0, i32* %13, align 4
  br label %28

28:                                               ; preds = %53, %27
  %29 = load i32, i32* %13, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** @protocols, align 8
  %31 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %30)
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %56

33:                                               ; preds = %28
  %34 = load i64, i64* %12, align 8
  %35 = load i32, i32* %13, align 4
  %36 = zext i32 %35 to i64
  %37 = shl i64 1, %36
  %38 = and i64 %34, %37
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %33
  %41 = load i8*, i8** %7, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** @protocols, align 8
  %43 = load i32, i32* %13, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i64 @sysfs_streq(i8* %41, i8* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %40
  %51 = load i32, i32* %13, align 4
  store i32 %51, i32* %10, align 4
  br label %56

52:                                               ; preds = %40, %33
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %13, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %13, align 4
  br label %28

56:                                               ; preds = %50, %28
  %57 = load i32, i32* %13, align 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** @protocols, align 8
  %59 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %58)
  %60 = icmp eq i32 %57, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i64, i64* @EINVAL, align 8
  %63 = sub i64 0, %62
  store i64 %63, i64* %11, align 8
  br label %125

64:                                               ; preds = %56
  %65 = load %struct.rc_dev*, %struct.rc_dev** %9, align 8
  %66 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %65, i32 0, i32 6
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %64
  %70 = load i32, i32* %10, align 4
  %71 = zext i32 %70 to i64
  %72 = shl i64 1, %71
  store i64 %72, i64* %14, align 8
  %73 = call i32 @ir_raw_load_modules(i64* %14)
  %74 = load i64, i64* %14, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %69
  %77 = load i64, i64* @EINVAL, align 8
  %78 = sub i64 0, %77
  store i64 %78, i64* %11, align 8
  br label %125

79:                                               ; preds = %69
  br label %80

80:                                               ; preds = %79, %64
  br label %81

81:                                               ; preds = %80, %4
  %82 = load %struct.rc_dev*, %struct.rc_dev** %9, align 8
  %83 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %122

87:                                               ; preds = %81
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.rc_dev*, %struct.rc_dev** %9, align 8
  %90 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 8
  %91 = load %struct.rc_dev*, %struct.rc_dev** %9, align 8
  %92 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %91, i32 0, i32 5
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @dev_dbg(i32* %92, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* @RC_PROTO_RC6_MCE, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %87
  %99 = load %struct.rc_dev*, %struct.rc_dev** %9, align 8
  %100 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %99, i32 0, i32 4
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  store i32 -2146500608, i32* %101, align 8
  br label %106

102:                                              ; preds = %87
  %103 = load %struct.rc_dev*, %struct.rc_dev** %9, align 8
  %104 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %103, i32 0, i32 4
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  store i32 0, i32* %105, align 8
  br label %106

106:                                              ; preds = %102, %98
  %107 = load %struct.rc_dev*, %struct.rc_dev** %9, align 8
  %108 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %107, i32 0, i32 4
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  store i64 0, i64* %109, align 8
  %110 = load %struct.rc_dev*, %struct.rc_dev** %9, align 8
  %111 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %110, i32 0, i32 2
  %112 = load i64 (%struct.rc_dev*, %struct.TYPE_4__*)*, i64 (%struct.rc_dev*, %struct.TYPE_4__*)** %111, align 8
  %113 = load %struct.rc_dev*, %struct.rc_dev** %9, align 8
  %114 = load %struct.rc_dev*, %struct.rc_dev** %9, align 8
  %115 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %114, i32 0, i32 4
  %116 = call i64 %112(%struct.rc_dev* %113, %struct.TYPE_4__* %115)
  store i64 %116, i64* %11, align 8
  %117 = load i64, i64* %11, align 8
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %106
  %120 = load i64, i64* %8, align 8
  store i64 %120, i64* %11, align 8
  br label %121

121:                                              ; preds = %119, %106
  br label %124

122:                                              ; preds = %81
  %123 = load i64, i64* %8, align 8
  store i64 %123, i64* %11, align 8
  br label %124

124:                                              ; preds = %122, %121
  br label %125

125:                                              ; preds = %124, %76, %61
  %126 = load %struct.rc_dev*, %struct.rc_dev** %9, align 8
  %127 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %126, i32 0, i32 3
  %128 = call i32 @mutex_unlock(i32* %127)
  %129 = load i64, i64* %11, align 8
  ret i64 %129
}

declare dso_local %struct.rc_dev* @to_rc_dev(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @sysfs_streq(i8*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @ir_raw_load_modules(i64*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
