; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_spi.c_sja1105et_reset_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_spi.c_sja1105et_reset_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sja1105_private = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.TYPE_3__ = type { %struct.sja1105_regs* }
%struct.sja1105_regs = type { i32 }
%struct.sja1105_reset_cmd = type { i64, i64, i64, i64, i64, i64, i64 }

@SJA1105_SIZE_RESET_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Only warm and cold reset is supported for SJA1105 E/T!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Warm reset requested\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Cold reset requested\0A\00", align 1
@SPI_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @sja1105et_reset_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sja1105et_reset_cmd(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sja1105_private*, align 8
  %7 = alloca %struct.sja1105_reset_cmd*, align 8
  %8 = alloca %struct.sja1105_regs*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.sja1105_private*
  store %struct.sja1105_private* %14, %struct.sja1105_private** %6, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.sja1105_reset_cmd*
  store %struct.sja1105_reset_cmd* %16, %struct.sja1105_reset_cmd** %7, align 8
  %17 = load %struct.sja1105_private*, %struct.sja1105_private** %6, align 8
  %18 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.sja1105_regs*, %struct.sja1105_regs** %20, align 8
  store %struct.sja1105_regs* %21, %struct.sja1105_regs** %8, align 8
  %22 = load %struct.sja1105_private*, %struct.sja1105_private** %6, align 8
  %23 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.device*, %struct.device** %25, align 8
  store %struct.device* %26, %struct.device** %9, align 8
  %27 = load i32, i32* @SJA1105_SIZE_RESET_CMD, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %10, align 8
  %30 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %11, align 8
  %31 = load %struct.sja1105_reset_cmd*, %struct.sja1105_reset_cmd** %7, align 8
  %32 = getelementptr inbounds %struct.sja1105_reset_cmd, %struct.sja1105_reset_cmd* %31, i32 0, i32 6
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %55, label %35

35:                                               ; preds = %2
  %36 = load %struct.sja1105_reset_cmd*, %struct.sja1105_reset_cmd** %7, align 8
  %37 = getelementptr inbounds %struct.sja1105_reset_cmd, %struct.sja1105_reset_cmd* %36, i32 0, i32 5
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %55, label %40

40:                                               ; preds = %35
  %41 = load %struct.sja1105_reset_cmd*, %struct.sja1105_reset_cmd** %7, align 8
  %42 = getelementptr inbounds %struct.sja1105_reset_cmd, %struct.sja1105_reset_cmd* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %40
  %46 = load %struct.sja1105_reset_cmd*, %struct.sja1105_reset_cmd** %7, align 8
  %47 = getelementptr inbounds %struct.sja1105_reset_cmd, %struct.sja1105_reset_cmd* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %45
  %51 = load %struct.sja1105_reset_cmd*, %struct.sja1105_reset_cmd** %7, align 8
  %52 = getelementptr inbounds %struct.sja1105_reset_cmd, %struct.sja1105_reset_cmd* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50, %45, %40, %35, %2
  %56 = load %struct.device*, %struct.device** %9, align 8
  %57 = call i32 @dev_err(%struct.device* %56, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %86

60:                                               ; preds = %50
  %61 = load %struct.sja1105_reset_cmd*, %struct.sja1105_reset_cmd** %7, align 8
  %62 = getelementptr inbounds %struct.sja1105_reset_cmd, %struct.sja1105_reset_cmd* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load %struct.device*, %struct.device** %9, align 8
  %67 = call i32 @dev_dbg(%struct.device* %66, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %60
  %69 = load %struct.sja1105_reset_cmd*, %struct.sja1105_reset_cmd** %7, align 8
  %70 = getelementptr inbounds %struct.sja1105_reset_cmd, %struct.sja1105_reset_cmd* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load %struct.device*, %struct.device** %9, align 8
  %75 = call i32 @dev_dbg(%struct.device* %74, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %76

76:                                               ; preds = %73, %68
  %77 = load %struct.sja1105_reset_cmd*, %struct.sja1105_reset_cmd** %7, align 8
  %78 = call i32 @sja1105et_reset_cmd_pack(i32* %30, %struct.sja1105_reset_cmd* %77)
  %79 = load %struct.sja1105_private*, %struct.sja1105_private** %6, align 8
  %80 = load i32, i32* @SPI_WRITE, align 4
  %81 = load %struct.sja1105_regs*, %struct.sja1105_regs** %8, align 8
  %82 = getelementptr inbounds %struct.sja1105_regs, %struct.sja1105_regs* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @SJA1105_SIZE_RESET_CMD, align 4
  %85 = call i32 @sja1105_spi_send_packed_buf(%struct.sja1105_private* %79, i32 %80, i32 %83, i32* %30, i32 %84)
  store i32 %85, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %86

86:                                               ; preds = %76, %55
  %87 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %87)
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #2

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #2

declare dso_local i32 @sja1105et_reset_cmd_pack(i32*, %struct.sja1105_reset_cmd*) #2

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
