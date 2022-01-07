; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tc90522.c_tc90522s_set_tsid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tc90522.c_tc90522s_set_tsid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg_val = type { i32, i32, i32 }
%struct.dvb_frontend = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@__const.tc90522s_set_tsid.set_tsid = private unnamed_addr constant [2 x %struct.reg_val] [%struct.reg_val { i32 143, i32 0, i32 0 }, %struct.reg_val { i32 144, i32 0, i32 0 }], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @tc90522s_set_tsid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc90522s_set_tsid(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca [2 x %struct.reg_val], align 16
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %4 = bitcast [2 x %struct.reg_val]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 bitcast ([2 x %struct.reg_val]* @__const.tc90522s_set_tsid.set_tsid to i8*), i64 24, i1 false)
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %6 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = and i32 %8, 65280
  %10 = ashr i32 %9, 8
  %11 = getelementptr inbounds [2 x %struct.reg_val], [2 x %struct.reg_val]* %3, i64 0, i64 0
  %12 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 8
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %14 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 255
  %18 = getelementptr inbounds [2 x %struct.reg_val], [2 x %struct.reg_val]* %3, i64 0, i64 1
  %19 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %21 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds [2 x %struct.reg_val], [2 x %struct.reg_val]* %3, i64 0, i64 0
  %24 = getelementptr inbounds [2 x %struct.reg_val], [2 x %struct.reg_val]* %3, i64 0, i64 0
  %25 = call i32 @ARRAY_SIZE(%struct.reg_val* %24)
  %26 = call i32 @reg_write(i32 %22, %struct.reg_val* %23, i32 %25)
  ret i32 %26
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @reg_write(i32, %struct.reg_val*, i32) #2

declare dso_local i32 @ARRAY_SIZE(%struct.reg_val*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
