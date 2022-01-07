; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst.c_dst_set_diseqc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst.c_dst_set_diseqc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dst_state* }
%struct.dst_state = type { i64, i32 }
%struct.dvb_diseqc_master_cmd = type { i32, i32 }

@__const.dst_set_diseqc.packet = private unnamed_addr constant [8 x i32] [i32 0, i32 8, i32 4, i32 224, i32 16, i32 56, i32 240, i32 236], align 16
@DST_TYPE_IS_SAT = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@DST_TYPE_HAS_DISEQC5 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_master_cmd*)* @dst_set_diseqc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dst_set_diseqc(%struct.dvb_frontend* %0, %struct.dvb_diseqc_master_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_diseqc_master_cmd*, align 8
  %6 = alloca %struct.dst_state*, align 8
  %7 = alloca [8 x i32], align 16
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dvb_diseqc_master_cmd* %1, %struct.dvb_diseqc_master_cmd** %5, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.dst_state*, %struct.dst_state** %9, align 8
  store %struct.dst_state* %10, %struct.dst_state** %6, align 8
  %11 = bitcast [8 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 bitcast ([8 x i32]* @__const.dst_set_diseqc.packet to i8*), i64 32, i1 false)
  %12 = load %struct.dst_state*, %struct.dst_state** %6, align 8
  %13 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @DST_TYPE_IS_SAT, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %71

20:                                               ; preds = %2
  %21 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %5, align 8
  %22 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %20
  %26 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %5, align 8
  %27 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %28, 5
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 3
  %32 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %5, align 8
  %33 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %5, align 8
  %36 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @memcpy(i32* %31, i32 %34, i32 %37)
  br label %64

39:                                               ; preds = %25, %20
  %40 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %5, align 8
  %41 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 5
  br i1 %43, label %44, label %60

44:                                               ; preds = %39
  %45 = load %struct.dst_state*, %struct.dst_state** %6, align 8
  %46 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @DST_TYPE_HAS_DISEQC5, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %44
  %52 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 2
  %53 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %5, align 8
  %54 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %5, align 8
  %57 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @memcpy(i32* %52, i32 %55, i32 %58)
  br label %63

60:                                               ; preds = %44, %39
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %71

63:                                               ; preds = %51
  br label %64

64:                                               ; preds = %63, %30
  %65 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %66 = call i32 @dst_check_sum(i32* %65, i32 7)
  %67 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 7
  store i32 %66, i32* %67, align 4
  %68 = load %struct.dst_state*, %struct.dst_state** %6, align 8
  %69 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %70 = call i32 @dst_command(%struct.dst_state* %68, i32* %69, i32 8)
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %64, %60, %17
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #2

declare dso_local i32 @dst_check_sum(i32*, i32) #2

declare dso_local i32 @dst_command(%struct.dst_state*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
