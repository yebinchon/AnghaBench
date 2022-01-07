; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_redrat3.c_redrat3_get_ir_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_redrat3.c_redrat3_get_ir_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.redrat3_dev = type { i64, %struct.TYPE_4__, %struct.device* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"error: no packet data read\0A\00", align 1
@ENODATA = common dso_local global i32 0, align 4
@RR3_MOD_SIGNAL_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"discarding non-signal data packet (type 0x%02x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.redrat3_dev*, i32)* @redrat3_get_ir_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @redrat3_get_ir_data(%struct.redrat3_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.redrat3_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.redrat3_dev* %0, %struct.redrat3_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.redrat3_dev*, %struct.redrat3_dev** %4, align 8
  %10 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %9, i32 0, i32 2
  %11 = load %struct.device*, %struct.device** %10, align 8
  store %struct.device* %11, %struct.device** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.redrat3_dev*, %struct.redrat3_dev** %4, align 8
  %13 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  %19 = icmp uge i64 %18, 4
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load %struct.redrat3_dev*, %struct.redrat3_dev** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @redrat3_read_packet_start(%struct.redrat3_dev* %21, i32 %22)
  br label %45

24:                                               ; preds = %16, %2
  %25 = load %struct.redrat3_dev*, %struct.redrat3_dev** %4, align 8
  %26 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.redrat3_dev*, %struct.redrat3_dev** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @redrat3_read_packet_continue(%struct.redrat3_dev* %30, i32 %31)
  br label %44

33:                                               ; preds = %24
  %34 = load %struct.redrat3_dev*, %struct.redrat3_dev** %4, align 8
  %35 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.device*, %struct.device** %6, align 8
  %40 = call i32 @dev_err(%struct.device* %39, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @ENODATA, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %8, align 4
  br label %77

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %29
  br label %45

45:                                               ; preds = %44, %20
  %46 = load %struct.redrat3_dev*, %struct.redrat3_dev** %4, align 8
  %47 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.redrat3_dev*, %struct.redrat3_dev** %4, align 8
  %50 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @be16_to_cpu(i32 %53)
  %55 = sext i32 %54 to i64
  %56 = add i64 %55, 4
  %57 = icmp ult i64 %48, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %81

59:                                               ; preds = %45
  %60 = load %struct.redrat3_dev*, %struct.redrat3_dev** %4, align 8
  %61 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @be16_to_cpu(i32 %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @RR3_MOD_SIGNAL_IN, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %59
  %70 = load %struct.redrat3_dev*, %struct.redrat3_dev** %4, align 8
  %71 = call i32 @redrat3_process_ir_data(%struct.redrat3_dev* %70)
  br label %76

72:                                               ; preds = %59
  %73 = load %struct.device*, %struct.device** %6, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @dev_dbg(%struct.device* %73, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %72, %69
  br label %77

77:                                               ; preds = %76, %38
  %78 = load %struct.redrat3_dev*, %struct.redrat3_dev** %4, align 8
  %79 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %78, i32 0, i32 0
  store i64 0, i64* %79, align 8
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %77, %58
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @redrat3_read_packet_start(%struct.redrat3_dev*, i32) #1

declare dso_local i32 @redrat3_read_packet_continue(%struct.redrat3_dev*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @redrat3_process_ir_data(%struct.redrat3_dev*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
