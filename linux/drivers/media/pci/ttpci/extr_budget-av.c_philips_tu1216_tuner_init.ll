; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget-av.c_philips_tu1216_tuner_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget-av.c_philips_tu1216_tuner_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_msg = type { i32, i32*, i32, i32 }
%struct.dvb_frontend = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.dvb_frontend.0*, i32)* }
%struct.dvb_frontend.0 = type opaque
%struct.TYPE_3__ = type { i64 }
%struct.budget = type { i32 }

@philips_tu1216_tuner_init.tu1216_init = internal global [4 x i32] [i32 11, i32 245, i32 133, i32 171], align 16
@__const.philips_tu1216_tuner_init.tuner_msg = private unnamed_addr constant %struct.i2c_msg { i32 96, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @philips_tu1216_tuner_init.tu1216_init, i32 0, i32 0), i32 16, i32 0 }, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @philips_tu1216_tuner_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @philips_tu1216_tuner_init(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.budget*, align 8
  %5 = alloca %struct.i2c_msg, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.budget*
  store %struct.budget* %11, %struct.budget** %4, align 8
  %12 = bitcast %struct.i2c_msg* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.i2c_msg* @__const.philips_tu1216_tuner_init.tuner_msg to i8*), i64 24, i1 false)
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %14 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %15, align 8
  %17 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %1
  %19 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %20 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %21, align 8
  %23 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %24 = bitcast %struct.dvb_frontend* %23 to %struct.dvb_frontend.0*
  %25 = call i32 %22(%struct.dvb_frontend.0* %24, i32 1)
  br label %26

26:                                               ; preds = %18, %1
  %27 = load %struct.budget*, %struct.budget** %4, align 8
  %28 = getelementptr inbounds %struct.budget, %struct.budget* %27, i32 0, i32 0
  %29 = call i32 @i2c_transfer(i32* %28, %struct.i2c_msg* %5, i32 1)
  %30 = icmp ne i32 %29, 1
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %36

34:                                               ; preds = %26
  %35 = call i32 @msleep(i32 1)
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %34, %31
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @i2c_transfer(i32*, %struct.i2c_msg*, i32) #2

declare dso_local i32 @msleep(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
