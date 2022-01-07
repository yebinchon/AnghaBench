; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_spi.c_sja1105pqrs_reset_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_spi.c_sja1105pqrs_reset_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sja1105_private = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.TYPE_3__ = type { %struct.sja1105_regs* }
%struct.sja1105_regs = type { i32 }
%struct.sja1105_reset_cmd = type { i64, i64, i64, i64, i64, i64, i64 }

@SJA1105_SIZE_RESET_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Main reset for all functional modules requested\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Chip configuration reset requested\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Clock and reset control logic reset requested\0A\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"OTP read cycle for reading product config settings requested\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Warm reset requested\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Cold reset requested\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Power-on reset requested\0A\00", align 1
@SPI_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @sja1105pqrs_reset_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sja1105pqrs_reset_cmd(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sja1105_private*, align 8
  %6 = alloca %struct.sja1105_reset_cmd*, align 8
  %7 = alloca %struct.sja1105_regs*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.sja1105_private*
  store %struct.sja1105_private* %12, %struct.sja1105_private** %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.sja1105_reset_cmd*
  store %struct.sja1105_reset_cmd* %14, %struct.sja1105_reset_cmd** %6, align 8
  %15 = load %struct.sja1105_private*, %struct.sja1105_private** %5, align 8
  %16 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.sja1105_regs*, %struct.sja1105_regs** %18, align 8
  store %struct.sja1105_regs* %19, %struct.sja1105_regs** %7, align 8
  %20 = load %struct.sja1105_private*, %struct.sja1105_private** %5, align 8
  %21 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.device*, %struct.device** %23, align 8
  store %struct.device* %24, %struct.device** %8, align 8
  %25 = load i32, i32* @SJA1105_SIZE_RESET_CMD, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %9, align 8
  %28 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %10, align 8
  %29 = load %struct.sja1105_reset_cmd*, %struct.sja1105_reset_cmd** %6, align 8
  %30 = getelementptr inbounds %struct.sja1105_reset_cmd, %struct.sja1105_reset_cmd* %29, i32 0, i32 6
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %2
  %34 = load %struct.device*, %struct.device** %8, align 8
  %35 = call i32 @dev_dbg(%struct.device* %34, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %2
  %37 = load %struct.sja1105_reset_cmd*, %struct.sja1105_reset_cmd** %6, align 8
  %38 = getelementptr inbounds %struct.sja1105_reset_cmd, %struct.sja1105_reset_cmd* %37, i32 0, i32 5
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load %struct.device*, %struct.device** %8, align 8
  %43 = call i32 @dev_dbg(%struct.device* %42, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %36
  %45 = load %struct.sja1105_reset_cmd*, %struct.sja1105_reset_cmd** %6, align 8
  %46 = getelementptr inbounds %struct.sja1105_reset_cmd, %struct.sja1105_reset_cmd* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.device*, %struct.device** %8, align 8
  %51 = call i32 @dev_dbg(%struct.device* %50, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %44
  %53 = load %struct.sja1105_reset_cmd*, %struct.sja1105_reset_cmd** %6, align 8
  %54 = getelementptr inbounds %struct.sja1105_reset_cmd, %struct.sja1105_reset_cmd* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load %struct.device*, %struct.device** %8, align 8
  %59 = call i32 @dev_dbg(%struct.device* %58, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57, %52
  %61 = load %struct.sja1105_reset_cmd*, %struct.sja1105_reset_cmd** %6, align 8
  %62 = getelementptr inbounds %struct.sja1105_reset_cmd, %struct.sja1105_reset_cmd* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load %struct.device*, %struct.device** %8, align 8
  %67 = call i32 @dev_dbg(%struct.device* %66, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %60
  %69 = load %struct.sja1105_reset_cmd*, %struct.sja1105_reset_cmd** %6, align 8
  %70 = getelementptr inbounds %struct.sja1105_reset_cmd, %struct.sja1105_reset_cmd* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load %struct.device*, %struct.device** %8, align 8
  %75 = call i32 @dev_dbg(%struct.device* %74, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %76

76:                                               ; preds = %73, %68
  %77 = load %struct.sja1105_reset_cmd*, %struct.sja1105_reset_cmd** %6, align 8
  %78 = getelementptr inbounds %struct.sja1105_reset_cmd, %struct.sja1105_reset_cmd* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load %struct.device*, %struct.device** %8, align 8
  %83 = call i32 @dev_dbg(%struct.device* %82, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %84

84:                                               ; preds = %81, %76
  %85 = load %struct.sja1105_reset_cmd*, %struct.sja1105_reset_cmd** %6, align 8
  %86 = call i32 @sja1105pqrs_reset_cmd_pack(i32* %28, %struct.sja1105_reset_cmd* %85)
  %87 = load %struct.sja1105_private*, %struct.sja1105_private** %5, align 8
  %88 = load i32, i32* @SPI_WRITE, align 4
  %89 = load %struct.sja1105_regs*, %struct.sja1105_regs** %7, align 8
  %90 = getelementptr inbounds %struct.sja1105_regs, %struct.sja1105_regs* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @SJA1105_SIZE_RESET_CMD, align 4
  %93 = call i32 @sja1105_spi_send_packed_buf(%struct.sja1105_private* %87, i32 %88, i32 %91, i32* %28, i32 %92)
  %94 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %94)
  ret i32 %93
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #2

declare dso_local i32 @sja1105pqrs_reset_cmd_pack(i32*, %struct.sja1105_reset_cmd*) #2

declare dso_local i32 @sja1105_spi_send_packed_buf(%struct.sja1105_private*, i32, i32, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
