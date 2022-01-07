; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-cec.c_vivid_cec_adap_transmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-cec.c_vivid_cec_adap_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_adapter = type { i32 }
%struct.cec_msg = type { i32 }
%struct.vivid_dev = type { i64, i8*, i32, i32 }
%struct.vivid_cec_work = type { i32, i64, i32, %struct.cec_msg, %struct.cec_adapter*, %struct.vivid_dev* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USECS_PER_BYTE = common dso_local global i32 0, align 4
@vivid_cec_xfer_done_worker = common dso_local global i32 0, align 4
@jiffies = common dso_local global i8* null, align 8
@vivid_cec_xfer_try_worker = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cec_adapter*, i32, i32, %struct.cec_msg*)* @vivid_cec_adap_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vivid_cec_adap_transmit(%struct.cec_adapter* %0, i32 %1, i32 %2, %struct.cec_msg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cec_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cec_msg*, align 8
  %10 = alloca %struct.vivid_dev*, align 8
  %11 = alloca %struct.vivid_cec_work*, align 8
  %12 = alloca i64, align 8
  store %struct.cec_adapter* %0, %struct.cec_adapter** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.cec_msg* %3, %struct.cec_msg** %9, align 8
  %13 = load %struct.cec_adapter*, %struct.cec_adapter** %6, align 8
  %14 = call %struct.vivid_dev* @cec_get_drvdata(%struct.cec_adapter* %13)
  store %struct.vivid_dev* %14, %struct.vivid_dev** %10, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.vivid_cec_work* @kzalloc(i32 40, i32 %15)
  store %struct.vivid_cec_work* %16, %struct.vivid_cec_work** %11, align 8
  store i64 0, i64* %12, align 8
  %17 = load %struct.vivid_cec_work*, %struct.vivid_cec_work** %11, align 8
  %18 = icmp eq %struct.vivid_cec_work* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %104

22:                                               ; preds = %4
  %23 = load %struct.vivid_dev*, %struct.vivid_dev** %10, align 8
  %24 = load %struct.vivid_cec_work*, %struct.vivid_cec_work** %11, align 8
  %25 = getelementptr inbounds %struct.vivid_cec_work, %struct.vivid_cec_work* %24, i32 0, i32 5
  store %struct.vivid_dev* %23, %struct.vivid_dev** %25, align 8
  %26 = load %struct.cec_adapter*, %struct.cec_adapter** %6, align 8
  %27 = load %struct.vivid_cec_work*, %struct.vivid_cec_work** %11, align 8
  %28 = getelementptr inbounds %struct.vivid_cec_work, %struct.vivid_cec_work* %27, i32 0, i32 4
  store %struct.cec_adapter* %26, %struct.cec_adapter** %28, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i64 @CEC_FREE_TIME_TO_USEC(i32 %29)
  %31 = load %struct.cec_msg*, %struct.cec_msg** %9, align 8
  %32 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @USECS_PER_BYTE, align 4
  %35 = mul nsw i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %30, %36
  %38 = load %struct.vivid_cec_work*, %struct.vivid_cec_work** %11, align 8
  %39 = getelementptr inbounds %struct.vivid_cec_work, %struct.vivid_cec_work* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  %40 = load %struct.vivid_cec_work*, %struct.vivid_cec_work** %11, align 8
  %41 = getelementptr inbounds %struct.vivid_cec_work, %struct.vivid_cec_work* %40, i32 0, i32 3
  %42 = load %struct.cec_msg*, %struct.cec_msg** %9, align 8
  %43 = bitcast %struct.cec_msg* %41 to i8*
  %44 = bitcast %struct.cec_msg* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %43, i8* align 4 %44, i64 4, i1 false)
  %45 = load %struct.vivid_dev*, %struct.vivid_dev** %10, align 8
  %46 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %45, i32 0, i32 2
  %47 = call i32 @spin_lock(i32* %46)
  %48 = load %struct.vivid_cec_work*, %struct.vivid_cec_work** %11, align 8
  %49 = getelementptr inbounds %struct.vivid_cec_work, %struct.vivid_cec_work* %48, i32 0, i32 2
  %50 = load %struct.vivid_dev*, %struct.vivid_dev** %10, align 8
  %51 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %50, i32 0, i32 3
  %52 = call i32 @list_add(i32* %49, i32* %51)
  %53 = load %struct.vivid_dev*, %struct.vivid_dev** %10, align 8
  %54 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %74

57:                                               ; preds = %22
  %58 = load %struct.vivid_cec_work*, %struct.vivid_cec_work** %11, align 8
  %59 = getelementptr inbounds %struct.vivid_cec_work, %struct.vivid_cec_work* %58, i32 0, i32 0
  %60 = load i32, i32* @vivid_cec_xfer_done_worker, align 4
  %61 = call i32 @INIT_DELAYED_WORK(i32* %59, i32 %60)
  %62 = load i8*, i8** @jiffies, align 8
  %63 = load %struct.vivid_dev*, %struct.vivid_dev** %10, align 8
  %64 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  %65 = load %struct.vivid_cec_work*, %struct.vivid_cec_work** %11, align 8
  %66 = getelementptr inbounds %struct.vivid_cec_work, %struct.vivid_cec_work* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @usecs_to_jiffies(i64 %67)
  %69 = load %struct.vivid_dev*, %struct.vivid_dev** %10, align 8
  %70 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  %71 = load %struct.vivid_dev*, %struct.vivid_dev** %10, align 8
  %72 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %12, align 8
  br label %90

74:                                               ; preds = %22
  %75 = load %struct.vivid_cec_work*, %struct.vivid_cec_work** %11, align 8
  %76 = getelementptr inbounds %struct.vivid_cec_work, %struct.vivid_cec_work* %75, i32 0, i32 0
  %77 = load i32, i32* @vivid_cec_xfer_try_worker, align 4
  %78 = call i32 @INIT_DELAYED_WORK(i32* %76, i32 %77)
  %79 = load %struct.vivid_dev*, %struct.vivid_dev** %10, align 8
  %80 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = load %struct.vivid_dev*, %struct.vivid_dev** %10, align 8
  %83 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr i8, i8* %81, i64 %84
  %86 = load i8*, i8** @jiffies, align 8
  %87 = ptrtoint i8* %85 to i64
  %88 = ptrtoint i8* %86 to i64
  %89 = sub i64 %87, %88
  store i64 %89, i64* %12, align 8
  br label %90

90:                                               ; preds = %74, %57
  %91 = load %struct.vivid_dev*, %struct.vivid_dev** %10, align 8
  %92 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %91, i32 0, i32 2
  %93 = call i32 @spin_unlock(i32* %92)
  %94 = load %struct.vivid_cec_work*, %struct.vivid_cec_work** %11, align 8
  %95 = getelementptr inbounds %struct.vivid_cec_work, %struct.vivid_cec_work* %94, i32 0, i32 0
  %96 = load i64, i64* %12, align 8
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %90
  br label %101

99:                                               ; preds = %90
  %100 = load i64, i64* %12, align 8
  br label %101

101:                                              ; preds = %99, %98
  %102 = phi i64 [ 0, %98 ], [ %100, %99 ]
  %103 = call i32 @schedule_delayed_work(i32* %95, i64 %102)
  store i32 0, i32* %5, align 4
  br label %104

104:                                              ; preds = %101, %19
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local %struct.vivid_dev* @cec_get_drvdata(%struct.cec_adapter*) #1

declare dso_local %struct.vivid_cec_work* @kzalloc(i32, i32) #1

declare dso_local i64 @CEC_FREE_TIME_TO_USEC(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i64 @usecs_to_jiffies(i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
