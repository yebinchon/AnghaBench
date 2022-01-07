; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/ttusb-dec/extr_ttusbdecfe.c_ttusbdecfe_dvbs_set_frontend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/ttusb-dec/extr_ttusbdecfe.c_ttusbdecfe_dvbs_set_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { i64, %struct.dtv_frontend_properties }
%struct.dtv_frontend_properties = type { i64, i64 }
%struct.ttusbdecfe_state = type { %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i32 (%struct.dvb_frontend*, i32, i32, i32*, i32*, i32*)* }

@LOF_HI = common dso_local global i64 0, align 8
@LOF_LO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @ttusbdecfe_dvbs_set_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttusbdecfe_dvbs_set_frontend(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.dtv_frontend_properties*, align 8
  %4 = alloca %struct.ttusbdecfe_state*, align 8
  %5 = alloca [40 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 1
  store %struct.dtv_frontend_properties* %11, %struct.dtv_frontend_properties** %3, align 8
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.ttusbdecfe_state*
  store %struct.ttusbdecfe_state* %15, %struct.ttusbdecfe_state** %4, align 8
  %16 = bitcast [40 x i32]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 160, i1 false)
  %17 = bitcast i8* %16 to <{ [12 x i32], [28 x i32] }>*
  %18 = getelementptr inbounds <{ [12 x i32], [28 x i32] }>, <{ [12 x i32], [28 x i32] }>* %17, i32 0, i32 0
  %19 = getelementptr inbounds [12 x i32], [12 x i32]* %18, i32 0, i32 3
  store i32 1, i32* %19, align 4
  %20 = getelementptr inbounds [12 x i32], [12 x i32]* %18, i32 0, i32 11
  store i32 1, i32* %20, align 4
  %21 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %22 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.ttusbdecfe_state*, %struct.ttusbdecfe_state** %4, align 8
  %25 = getelementptr inbounds %struct.ttusbdecfe_state, %struct.ttusbdecfe_state* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i64, i64* @LOF_HI, align 8
  br label %32

30:                                               ; preds = %1
  %31 = load i64, i64* @LOF_LO, align 8
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i64 [ %29, %28 ], [ %31, %30 ]
  %34 = add nsw i64 %23, %33
  %35 = call i32 @htonl(i64 %34)
  store i32 %35, i32* %6, align 4
  %36 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 4
  %37 = call i32 @memcpy(i32* %36, i32* %6, i32 4)
  %38 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %39 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @htonl(i64 %40)
  store i32 %41, i32* %7, align 4
  %42 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 12
  %43 = call i32 @memcpy(i32* %42, i32* %7, i32 4)
  %44 = load %struct.ttusbdecfe_state*, %struct.ttusbdecfe_state** %4, align 8
  %45 = getelementptr inbounds %struct.ttusbdecfe_state, %struct.ttusbdecfe_state* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %32
  %49 = load i64, i64* @LOF_HI, align 8
  br label %52

50:                                               ; preds = %32
  %51 = load i64, i64* @LOF_LO, align 8
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i64 [ %49, %48 ], [ %51, %50 ]
  %54 = call i32 @htonl(i64 %53)
  store i32 %54, i32* %8, align 4
  %55 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 24
  %56 = call i32 @memcpy(i32* %55, i32* %8, i32 4)
  %57 = load %struct.ttusbdecfe_state*, %struct.ttusbdecfe_state** %4, align 8
  %58 = getelementptr inbounds %struct.ttusbdecfe_state, %struct.ttusbdecfe_state* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @htonl(i64 %59)
  store i32 %60, i32* %9, align 4
  %61 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 28
  %62 = call i32 @memcpy(i32* %61, i32* %9, i32 4)
  %63 = load %struct.ttusbdecfe_state*, %struct.ttusbdecfe_state** %4, align 8
  %64 = getelementptr inbounds %struct.ttusbdecfe_state, %struct.ttusbdecfe_state* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32 (%struct.dvb_frontend*, i32, i32, i32*, i32*, i32*)*, i32 (%struct.dvb_frontend*, i32, i32, i32*, i32*, i32*)** %66, align 8
  %68 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %69 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 0
  %70 = call i32 %67(%struct.dvb_frontend* %68, i32 113, i32 160, i32* %69, i32* null, i32* null)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @htonl(i64) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
