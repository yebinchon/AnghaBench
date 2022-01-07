; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_mxl111sf-gpio.c_pca9534_init_port_expander.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_mxl111sf-gpio.c_pca9534_init_port_expander.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxl111sf_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_msg = type { i32*, i32, i32, i32 }

@__const.pca9534_init_port_expander.w = private unnamed_addr constant [2 x i32] [i32 1, i32 7], align 4
@PCA9534_I2C_ADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"()\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxl111sf_state*)* @pca9534_init_port_expander to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pca9534_init_port_expander(%struct.mxl111sf_state* %0) #0 {
  %2 = alloca %struct.mxl111sf_state*, align 8
  %3 = alloca [2 x i32], align 4
  %4 = alloca %struct.i2c_msg, align 8
  store %struct.mxl111sf_state* %0, %struct.mxl111sf_state** %2, align 8
  %5 = bitcast [2 x i32]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast ([2 x i32]* @__const.pca9534_init_port_expander.w to i8*), i64 8, i1 false)
  %6 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %4, i32 0, i32 0
  %7 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  store i32* %7, i32** %6, align 8
  %8 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %4, i32 0, i32 1
  store i32 2, i32* %8, align 8
  %9 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %4, i32 0, i32 2
  store i32 0, i32* %9, align 4
  %10 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %4, i32 0, i32 3
  %11 = load i32, i32* @PCA9534_I2C_ADDR, align 4
  store i32 %11, i32* %10, align 8
  %12 = call i32 @mxl_debug(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %2, align 8
  %14 = getelementptr inbounds %struct.mxl111sf_state, %struct.mxl111sf_state* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @i2c_transfer(i32* %16, %struct.i2c_msg* %4, i32 1)
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  store i32 3, i32* %18, align 4
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  store i32 0, i32* %19, align 4
  %20 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %2, align 8
  %21 = getelementptr inbounds %struct.mxl111sf_state, %struct.mxl111sf_state* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @i2c_transfer(i32* %23, %struct.i2c_msg* %4, i32 1)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @mxl_debug(i8*) #2

declare dso_local i32 @i2c_transfer(i32*, %struct.i2c_msg*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
