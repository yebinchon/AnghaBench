; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/tehuti/extr_tehuti.c_bdx_fw_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/tehuti/extr_tehuti.c_bdx_fw_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bdx_priv = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.firmware = type { i32, i64 }

@ENTER = common dso_local global i32 0, align 4
@regINIT_SEMAPHORE = common dso_local global i32 0, align 4
@regINIT_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"tehuti/bdx.bin\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"firmware loading failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"VPC = 0x%x VIC = 0x%x INIT_STATUS = 0x%x i=%d\0A\00", align 1
@regVPC = common dso_local global i32 0, align 4
@regVIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"%s: firmware loading success\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bdx_priv*)* @bdx_fw_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bdx_fw_load(%struct.bdx_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bdx_priv*, align 8
  %4 = alloca %struct.firmware*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bdx_priv* %0, %struct.bdx_priv** %3, align 8
  store %struct.firmware* null, %struct.firmware** %4, align 8
  %8 = load i32, i32* @ENTER, align 4
  %9 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %10 = load i32, i32* @regINIT_SEMAPHORE, align 4
  %11 = call i32 @READ_REG(%struct.bdx_priv* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %13 = load i32, i32* @regINIT_STATUS, align 4
  %14 = call i32 @READ_REG(%struct.bdx_priv* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %39, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %16
  %20 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %21 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = call i32 @request_firmware(%struct.firmware** %4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %57

28:                                               ; preds = %19
  %29 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %30 = load %struct.firmware*, %struct.firmware** %4, align 8
  %31 = getelementptr inbounds %struct.firmware, %struct.firmware* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = load %struct.firmware*, %struct.firmware** %4, align 8
  %35 = getelementptr inbounds %struct.firmware, %struct.firmware* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @bdx_tx_push_desc_safe(%struct.bdx_priv* %29, i8* %33, i32 %36)
  %38 = call i32 @mdelay(i32 100)
  br label %39

39:                                               ; preds = %28, %16, %1
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %51, %39
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 200
  br i1 %42, label %43, label %54

43:                                               ; preds = %40
  %44 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %45 = load i32, i32* @regINIT_STATUS, align 4
  %46 = call i32 @READ_REG(%struct.bdx_priv* %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 0, i32* %7, align 4
  br label %57

49:                                               ; preds = %43
  %50 = call i32 @mdelay(i32 2)
  br label %51

51:                                               ; preds = %49
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %40

54:                                               ; preds = %40
  %55 = load i32, i32* @EIO, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %54, %48, %27
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %62 = load i32, i32* @regINIT_SEMAPHORE, align 4
  %63 = call i32 @WRITE_REG(%struct.bdx_priv* %61, i32 %62, i32 1)
  br label %64

64:                                               ; preds = %60, %57
  %65 = load %struct.firmware*, %struct.firmware** %4, align 8
  %66 = call i32 @release_firmware(%struct.firmware* %65)
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %93

69:                                               ; preds = %64
  %70 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %71 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = call i32 @netdev_err(%struct.TYPE_4__* %72, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @EIO, align 4
  %76 = sub nsw i32 0, %75
  %77 = icmp eq i32 %74, %76
  br i1 %77, label %78, label %90

78:                                               ; preds = %69
  %79 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %80 = load i32, i32* @regVPC, align 4
  %81 = call i32 @READ_REG(%struct.bdx_priv* %79, i32 %80)
  %82 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %83 = load i32, i32* @regVIC, align 4
  %84 = call i32 @READ_REG(%struct.bdx_priv* %82, i32 %83)
  %85 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %86 = load i32, i32* @regINIT_STATUS, align 4
  %87 = call i32 @READ_REG(%struct.bdx_priv* %85, i32 %86)
  %88 = load i32, i32* %6, align 4
  %89 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %81, i32 %84, i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %78, %69
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @RET(i32 %91)
  br label %101

93:                                               ; preds = %64
  %94 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %95 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %94, i32 0, i32 0
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %98)
  %100 = call i32 @RET(i32 0)
  br label %101

101:                                              ; preds = %93, %90
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @READ_REG(%struct.bdx_priv*, i32) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i32 @bdx_tx_push_desc_safe(%struct.bdx_priv*, i8*, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @WRITE_REG(%struct.bdx_priv*, i32, i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @netdev_err(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @DBG(i8*, i32, ...) #1

declare dso_local i32 @RET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
