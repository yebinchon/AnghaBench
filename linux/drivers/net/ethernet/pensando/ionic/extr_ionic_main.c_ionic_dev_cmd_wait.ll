; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_main.c_ionic_dev_cmd_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_main.c_ionic_dev_cmd_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ionic = type { i32, %struct.ionic_dev }
%struct.ionic_dev = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"DEVCMD %s (%d) done=%d took %ld secs (%ld jiffies)\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"DEVCMD %s (%d) timeout after %ld secs\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@IONIC_RC_EAGAIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"DEV_CMD %s (%d) error, %s (%d) retrying...\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"DEV_CMD %s (%d) error, %s (%d) failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ionic_dev_cmd_wait(%struct.ionic* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ionic*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ionic_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ionic* %0, %struct.ionic** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load %struct.ionic*, %struct.ionic** %4, align 8
  %14 = getelementptr inbounds %struct.ionic, %struct.ionic* %13, i32 0, i32 1
  store %struct.ionic_dev* %14, %struct.ionic_dev** %6, align 8
  %15 = call i32 (...) @in_interrupt()
  %16 = call i32 @WARN_ON(i32 %15)
  %17 = load i64, i64* @jiffies, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @HZ, align 8
  %20 = mul i64 %18, %19
  %21 = add i64 %17, %20
  store i64 %21, i64* %8, align 8
  br label %22

22:                                               ; preds = %98, %2
  %23 = load i64, i64* @jiffies, align 8
  store i64 %23, i64* %7, align 8
  br label %24

24:                                               ; preds = %40, %22
  %25 = load %struct.ionic_dev*, %struct.ionic_dev** %6, align 8
  %26 = call i32 @ionic_dev_cmd_done(%struct.ionic_dev* %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %42

30:                                               ; preds = %24
  %31 = call i32 @msleep(i32 20)
  br label %32

32:                                               ; preds = %30
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %32
  %36 = load i64, i64* @jiffies, align 8
  %37 = load i64, i64* %8, align 8
  %38 = call i64 @time_before(i64 %36, i64 %37)
  %39 = icmp ne i64 %38, 0
  br label %40

40:                                               ; preds = %35, %32
  %41 = phi i1 [ false, %32 ], [ %39, %35 ]
  br i1 %41, label %24, label %42

42:                                               ; preds = %40, %29
  %43 = load i64, i64* @jiffies, align 8
  %44 = load i64, i64* %7, align 8
  %45 = sub i64 %43, %44
  store i64 %45, i64* %9, align 8
  %46 = load %struct.ionic_dev*, %struct.ionic_dev** %6, align 8
  %47 = getelementptr inbounds %struct.ionic_dev, %struct.ionic_dev* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %10, align 4
  %53 = load %struct.ionic*, %struct.ionic** %4, align 8
  %54 = getelementptr inbounds %struct.ionic, %struct.ionic* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @ionic_opcode_to_str(i32 %56)
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i64, i64* %9, align 8
  %61 = load i64, i64* @HZ, align 8
  %62 = udiv i64 %60, %61
  %63 = load i64, i64* %9, align 8
  %64 = call i32 @dev_dbg(i32 %55, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %58, i32 %59, i64 %62, i64 %63)
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %83, label %67

67:                                               ; preds = %42
  %68 = load i64, i64* @jiffies, align 8
  %69 = load i64, i64* %8, align 8
  %70 = call i64 @time_before(i64 %68, i64 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %83, label %72

72:                                               ; preds = %67
  %73 = load %struct.ionic*, %struct.ionic** %4, align 8
  %74 = getelementptr inbounds %struct.ionic, %struct.ionic* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @ionic_opcode_to_str(i32 %76)
  %78 = load i32, i32* %10, align 4
  %79 = load i64, i64* %5, align 8
  %80 = call i32 @dev_warn(i32 %75, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %77, i32 %78, i64 %79)
  %81 = load i32, i32* @ETIMEDOUT, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %134

83:                                               ; preds = %67, %42
  %84 = load %struct.ionic*, %struct.ionic** %4, align 8
  %85 = getelementptr inbounds %struct.ionic, %struct.ionic* %84, i32 0, i32 1
  %86 = call i32 @ionic_dev_cmd_status(%struct.ionic_dev* %85)
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %12, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %133

89:                                               ; preds = %83
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* @IONIC_RC_EAGAIN, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %120

93:                                               ; preds = %89
  %94 = load i64, i64* @jiffies, align 8
  %95 = load i64, i64* %8, align 8
  %96 = call i32 @time_after(i64 %94, i64 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %120, label %98

98:                                               ; preds = %93
  %99 = load %struct.ionic*, %struct.ionic** %4, align 8
  %100 = getelementptr inbounds %struct.ionic, %struct.ionic* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %10, align 4
  %103 = call i32 @ionic_opcode_to_str(i32 %102)
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* %12, align 4
  %106 = call i32 @ionic_error_to_str(i32 %105)
  %107 = load i32, i32* %12, align 4
  %108 = call i32 @dev_err(i32 %101, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %103, i32 %104, i32 %106, i32 %107)
  %109 = call i32 @msleep(i32 1000)
  %110 = load %struct.ionic_dev*, %struct.ionic_dev** %6, align 8
  %111 = getelementptr inbounds %struct.ionic_dev, %struct.ionic_dev* %110, i32 0, i32 0
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  %114 = call i32 @iowrite32(i32 0, i32* %113)
  %115 = load %struct.ionic_dev*, %struct.ionic_dev** %6, align 8
  %116 = getelementptr inbounds %struct.ionic_dev, %struct.ionic_dev* %115, i32 0, i32 0
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = call i32 @iowrite32(i32 1, i32* %118)
  br label %22

120:                                              ; preds = %93, %89
  %121 = load %struct.ionic*, %struct.ionic** %4, align 8
  %122 = getelementptr inbounds %struct.ionic, %struct.ionic* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %10, align 4
  %125 = call i32 @ionic_opcode_to_str(i32 %124)
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* %12, align 4
  %128 = call i32 @ionic_error_to_str(i32 %127)
  %129 = load i32, i32* %12, align 4
  %130 = call i32 @dev_err(i32 %123, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %125, i32 %126, i32 %128, i32 %129)
  %131 = load i32, i32* %12, align 4
  %132 = call i32 @ionic_error_to_errno(i32 %131)
  store i32 %132, i32* %3, align 4
  br label %134

133:                                              ; preds = %83
  store i32 0, i32* %3, align 4
  br label %134

134:                                              ; preds = %133, %120, %72
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i32 @ionic_dev_cmd_done(%struct.ionic_dev*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i64, i64) #1

declare dso_local i32 @ionic_opcode_to_str(i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i32, i64) #1

declare dso_local i32 @ionic_dev_cmd_status(%struct.ionic_dev*) #1

declare dso_local i32 @time_after(i64, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ionic_error_to_str(i32) #1

declare dso_local i32 @iowrite32(i32, i32*) #1

declare dso_local i32 @ionic_error_to_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
