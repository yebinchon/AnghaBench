; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-dvb.c_kworld_sbtvd_gate_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-dvb.c_kworld_sbtvd_gate_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.saa7134_dev* }
%struct.saa7134_dev = type { i32 }
%struct.i2c_msg = type { i32, i8*, i32, i32 }

@__const.kworld_sbtvd_gate_ctrl.initmsg = private unnamed_addr constant [2 x i8] c"E\97", align 1
@__const.kworld_sbtvd_gate_ctrl.msg_enable = private unnamed_addr constant [2 x i8] c"E\C1", align 1
@__const.kworld_sbtvd_gate_ctrl.msg_disable = private unnamed_addr constant [2 x i8] c"E\81", align 1
@.str = private unnamed_addr constant [31 x i8] c"could not access the I2C gate\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @kworld_sbtvd_gate_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kworld_sbtvd_gate_ctrl(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.saa7134_dev*, align 8
  %7 = alloca [2 x i8], align 1
  %8 = alloca [2 x i8], align 1
  %9 = alloca [2 x i8], align 1
  %10 = alloca %struct.i2c_msg, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.saa7134_dev*, %struct.saa7134_dev** %14, align 8
  store %struct.saa7134_dev* %15, %struct.saa7134_dev** %6, align 8
  %16 = bitcast [2 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %16, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.kworld_sbtvd_gate_ctrl.initmsg, i32 0, i32 0), i64 2, i1 false)
  %17 = bitcast [2 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %17, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.kworld_sbtvd_gate_ctrl.msg_enable, i32 0, i32 0), i64 2, i1 false)
  %18 = bitcast [2 x i8]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.kworld_sbtvd_gate_ctrl.msg_disable, i32 0, i32 0), i64 2, i1 false)
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 0
  store i32 75, i32* %19, align 8
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 1
  %21 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  store i8* %21, i8** %20, align 8
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 2
  store i32 2, i32* %22, align 8
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 3
  store i32 0, i32* %23, align 4
  %24 = load %struct.saa7134_dev*, %struct.saa7134_dev** %6, align 8
  %25 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %24, i32 0, i32 0
  %26 = call i32 @i2c_transfer(i32* %25, %struct.i2c_msg* %10, i32 1)
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = call i32 @pr_warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %52

32:                                               ; preds = %2
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %37 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 1
  store i8* %36, i8** %37, align 8
  br label %41

38:                                               ; preds = %32
  %39 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  %40 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 1
  store i8* %39, i8** %40, align 8
  br label %41

41:                                               ; preds = %38, %35
  %42 = load %struct.saa7134_dev*, %struct.saa7134_dev** %6, align 8
  %43 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %42, i32 0, i32 0
  %44 = call i32 @i2c_transfer(i32* %43, %struct.i2c_msg* %10, i32 1)
  %45 = icmp ne i32 %44, 1
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = call i32 @pr_warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %52

50:                                               ; preds = %41
  %51 = call i32 @msleep(i32 20)
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %50, %46, %28
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @i2c_transfer(i32*, %struct.i2c_msg*, i32) #2

declare dso_local i32 @pr_warn(i8*) #2

declare dso_local i32 @msleep(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
