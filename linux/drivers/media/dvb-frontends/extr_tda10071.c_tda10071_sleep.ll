; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda10071.c_tda10071_sleep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda10071.c_tda10071_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda10071_reg_val_mask = type { i32, i32, i32, i32, i32, i32 }
%struct.dvb_frontend = type { %struct.tda10071_dev* }
%struct.tda10071_dev = type { i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.tda10071_cmd = type { i32*, i32 }

@__const.tda10071_sleep.tab = private unnamed_addr constant [10 x %struct.tda10071_reg_val_mask] [%struct.tda10071_reg_val_mask { i32 205, i32 7, i32 7, i32 0, i32 0, i32 0 }, %struct.tda10071_reg_val_mask { i32 128, i32 2, i32 2, i32 0, i32 0, i32 0 }, %struct.tda10071_reg_val_mask { i32 205, i32 192, i32 192, i32 0, i32 0, i32 0 }, %struct.tda10071_reg_val_mask { i32 206, i32 27, i32 27, i32 0, i32 0, i32 0 }, %struct.tda10071_reg_val_mask { i32 157, i32 1, i32 1, i32 0, i32 0, i32 0 }, %struct.tda10071_reg_val_mask { i32 157, i32 2, i32 2, i32 0, i32 0, i32 0 }, %struct.tda10071_reg_val_mask { i32 158, i32 1, i32 1, i32 0, i32 0, i32 0 }, %struct.tda10071_reg_val_mask { i32 135, i32 128, i32 128, i32 0, i32 0, i32 0 }, %struct.tda10071_reg_val_mask { i32 206, i32 8, i32 8, i32 0, i32 0, i32 0 }, %struct.tda10071_reg_val_mask { i32 206, i32 16, i32 16, i32 0, i32 0, i32 0 }], align 16
@EFAULT = common dso_local global i32 0, align 4
@CMD_SET_SLEEP_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @tda10071_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda10071_sleep(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.tda10071_dev*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.tda10071_cmd, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [10 x %struct.tda10071_reg_val_mask], align 16
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 0
  %12 = load %struct.tda10071_dev*, %struct.tda10071_dev** %11, align 8
  store %struct.tda10071_dev* %12, %struct.tda10071_dev** %4, align 8
  %13 = load %struct.tda10071_dev*, %struct.tda10071_dev** %4, align 8
  %14 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %13, i32 0, i32 1
  %15 = load %struct.i2c_client*, %struct.i2c_client** %14, align 8
  store %struct.i2c_client* %15, %struct.i2c_client** %5, align 8
  %16 = bitcast [10 x %struct.tda10071_reg_val_mask]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %16, i8* align 16 bitcast ([10 x %struct.tda10071_reg_val_mask]* @__const.tda10071_sleep.tab to i8*), i64 240, i1 false)
  %17 = load %struct.tda10071_dev*, %struct.tda10071_dev** %4, align 8
  %18 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @EFAULT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %7, align 4
  br label %74

24:                                               ; preds = %1
  %25 = load i32, i32* @CMD_SET_SLEEP_MODE, align 4
  %26 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %6, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 %25, i32* %28, align 4
  %29 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %6, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  store i32 0, i32* %31, align 4
  %32 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %6, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  store i32 1, i32* %34, align 4
  %35 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %6, i32 0, i32 1
  store i32 3, i32* %35, align 8
  %36 = load %struct.tda10071_dev*, %struct.tda10071_dev** %4, align 8
  %37 = call i32 @tda10071_cmd_execute(%struct.tda10071_dev* %36, %struct.tda10071_cmd* %6)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %24
  br label %74

41:                                               ; preds = %24
  store i32 0, i32* %8, align 4
  br label %42

42:                                               ; preds = %69, %41
  %43 = load i32, i32* %8, align 4
  %44 = getelementptr inbounds [10 x %struct.tda10071_reg_val_mask], [10 x %struct.tda10071_reg_val_mask]* %9, i64 0, i64 0
  %45 = call i32 @ARRAY_SIZE(%struct.tda10071_reg_val_mask* %44)
  %46 = icmp slt i32 %43, %45
  br i1 %46, label %47, label %72

47:                                               ; preds = %42
  %48 = load %struct.tda10071_dev*, %struct.tda10071_dev** %4, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [10 x %struct.tda10071_reg_val_mask], [10 x %struct.tda10071_reg_val_mask]* %9, i64 0, i64 %50
  %52 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [10 x %struct.tda10071_reg_val_mask], [10 x %struct.tda10071_reg_val_mask]* %9, i64 0, i64 %55
  %57 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [10 x %struct.tda10071_reg_val_mask], [10 x %struct.tda10071_reg_val_mask]* %9, i64 0, i64 %60
  %62 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @tda10071_wr_reg_mask(%struct.tda10071_dev* %48, i32 %53, i32 %58, i32 %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %47
  br label %74

68:                                               ; preds = %47
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %42

72:                                               ; preds = %42
  %73 = load i32, i32* %7, align 4
  store i32 %73, i32* %2, align 4
  br label %80

74:                                               ; preds = %67, %40, %21
  %75 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %76 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %75, i32 0, i32 0
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @dev_dbg(i32* %76, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* %7, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %74, %72
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @tda10071_cmd_execute(%struct.tda10071_dev*, %struct.tda10071_cmd*) #2

declare dso_local i32 @ARRAY_SIZE(%struct.tda10071_reg_val_mask*) #2

declare dso_local i32 @tda10071_wr_reg_mask(%struct.tda10071_dev*, i32, i32, i32) #2

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
