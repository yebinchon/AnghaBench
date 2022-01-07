; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_gl861.c_friio_tuner_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_gl861.c_friio_tuner_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.dvb_pll_config, %struct.i2c_board_info }
%struct.dvb_pll_config = type { i32 }
%struct.i2c_board_info = type { i32, i32 }
%struct.dvb_usb_adapter = type { i32* }
%struct.i2c_client = type { i32 }
%struct.friio_priv = type { %struct.i2c_client*, i32 }

@friio_config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [8 x i8] c"dvb_pll\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @friio_tuner_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @friio_tuner_attach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_adapter*, align 8
  %4 = alloca %struct.i2c_board_info*, align 8
  %5 = alloca %struct.dvb_pll_config, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.friio_priv*, align 8
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %3, align 8
  %8 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %9 = call %struct.friio_priv* @adap_to_priv(%struct.dvb_usb_adapter* %8)
  store %struct.friio_priv* %9, %struct.friio_priv** %7, align 8
  store %struct.i2c_board_info* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @friio_config, i32 0, i32 1), %struct.i2c_board_info** %4, align 8
  %10 = bitcast %struct.dvb_pll_config* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.TYPE_2__* @friio_config to i8*), i64 4, i1 false)
  %11 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.dvb_pll_config, %struct.dvb_pll_config* %5, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = load %struct.i2c_board_info*, %struct.i2c_board_info** %4, align 8
  %18 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.friio_priv*, %struct.friio_priv** %7, align 8
  %21 = getelementptr inbounds %struct.friio_priv, %struct.friio_priv* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.i2c_board_info*, %struct.i2c_board_info** %4, align 8
  %24 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.i2c_client* @dvb_module_probe(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22, i32 %25, %struct.dvb_pll_config* %5)
  store %struct.i2c_client* %26, %struct.i2c_client** %6, align 8
  %27 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %28 = icmp ne %struct.i2c_client* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %1
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %36

32:                                               ; preds = %1
  %33 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %34 = load %struct.friio_priv*, %struct.friio_priv** %7, align 8
  %35 = getelementptr inbounds %struct.friio_priv, %struct.friio_priv* %34, i32 0, i32 0
  store %struct.i2c_client* %33, %struct.i2c_client** %35, align 8
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %32, %29
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.friio_priv* @adap_to_priv(%struct.dvb_usb_adapter*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.i2c_client* @dvb_module_probe(i8*, i32, i32, i32, %struct.dvb_pll_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
