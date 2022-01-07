; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/ttusb-dec/extr_ttusbdecfe.c_ttusbdecfe_dvbs_diseqc_send_master_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/ttusb-dec/extr_ttusbdecfe.c_ttusbdecfe_dvbs_diseqc_send_master_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { i64 }
%struct.dvb_diseqc_master_cmd = type { i32, i32 }
%struct.ttusbdecfe_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dvb_frontend*, i32, i32, i32*, i32*, i32*)* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_master_cmd*)* @ttusbdecfe_dvbs_diseqc_send_master_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttusbdecfe_dvbs_diseqc_send_master_cmd(%struct.dvb_frontend* %0, %struct.dvb_diseqc_master_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_diseqc_master_cmd*, align 8
  %6 = alloca %struct.ttusbdecfe_state*, align 8
  %7 = alloca [10 x i32], align 16
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dvb_diseqc_master_cmd* %1, %struct.dvb_diseqc_master_cmd** %5, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.ttusbdecfe_state*
  store %struct.ttusbdecfe_state* %11, %struct.ttusbdecfe_state** %6, align 8
  %12 = bitcast [10 x i32]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 40, i1 false)
  %13 = bitcast i8* %12 to <{ i32, i32, [8 x i32] }>*
  %14 = getelementptr inbounds <{ i32, i32, [8 x i32] }>, <{ i32, i32, [8 x i32] }>* %13, i32 0, i32 1
  store i32 255, i32* %14, align 4
  %15 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %5, align 8
  %16 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = icmp ugt i64 %18, 36
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %47

23:                                               ; preds = %2
  %24 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 4
  %25 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %5, align 8
  %26 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %5, align 8
  %29 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @memcpy(i32* %24, i32 %27, i32 %30)
  %32 = load %struct.ttusbdecfe_state*, %struct.ttusbdecfe_state** %6, align 8
  %33 = getelementptr inbounds %struct.ttusbdecfe_state, %struct.ttusbdecfe_state* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32 (%struct.dvb_frontend*, i32, i32, i32*, i32*, i32*)*, i32 (%struct.dvb_frontend*, i32, i32, i32*, i32*, i32*)** %35, align 8
  %37 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %38 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %5, align 8
  %39 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 6, %40
  %42 = sext i32 %41 to i64
  %43 = sub i64 40, %42
  %44 = trunc i64 %43 to i32
  %45 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 0
  %46 = call i32 %36(%struct.dvb_frontend* %37, i32 114, i32 %44, i32* %45, i32* null, i32* null)
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %23, %20
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
