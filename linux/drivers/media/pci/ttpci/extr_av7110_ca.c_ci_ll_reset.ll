; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110_ca.c_ci_ll_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110_ca.c_ci_ll_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_ringbuffer = type { i32 }
%struct.file = type { i32 }
%struct.ca_slot_info = type { i64 }

@__const.ci_ll_reset.msg = private unnamed_addr constant [8 x i32] [i32 0, i32 6, i32 0, i32 0, i32 255, i32 2, i32 0, i32 0], align 16
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_ringbuffer*, %struct.file*, i32, %struct.ca_slot_info*)* @ci_ll_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_ll_reset(%struct.dvb_ringbuffer* %0, %struct.file* %1, i32 %2, %struct.ca_slot_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dvb_ringbuffer*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ca_slot_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [8 x i32], align 16
  store %struct.dvb_ringbuffer* %0, %struct.dvb_ringbuffer** %6, align 8
  store %struct.file* %1, %struct.file** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ca_slot_info* %3, %struct.ca_slot_info** %9, align 8
  store i32 0, i32* %11, align 4
  %13 = bitcast [8 x i32]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %13, i8* align 16 bitcast ([8 x i32]* @__const.ci_ll_reset.msg to i8*), i64 32, i1 false)
  store i32 0, i32* %10, align 4
  br label %14

14:                                               ; preds = %27, %4
  %15 = load i32, i32* %10, align 4
  %16 = icmp slt i32 %15, 2
  br i1 %16, label %17, label %30

17:                                               ; preds = %14
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %10, align 4
  %20 = shl i32 1, %19
  %21 = and i32 %18, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* %11, align 4
  %25 = add nsw i32 %24, 8
  store i32 %25, i32* %11, align 4
  br label %26

26:                                               ; preds = %23, %17
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %10, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %10, align 4
  br label %14

30:                                               ; preds = %14
  %31 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %6, align 8
  %32 = call i32 @dvb_ringbuffer_free(%struct.dvb_ringbuffer* %31)
  %33 = load i32, i32* %11, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @EBUSY, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %64

38:                                               ; preds = %30
  store i32 0, i32* %10, align 4
  br label %39

39:                                               ; preds = %60, %38
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %40, 2
  br i1 %41, label %42, label %63

42:                                               ; preds = %39
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %10, align 4
  %45 = shl i32 1, %44
  %46 = and i32 %43, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %42
  %49 = load i32, i32* %10, align 4
  %50 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 2
  store i32 %49, i32* %50, align 8
  %51 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %6, align 8
  %52 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  %53 = call i32 @dvb_ringbuffer_write(%struct.dvb_ringbuffer* %51, i32* %52, i32 8)
  %54 = load %struct.ca_slot_info*, %struct.ca_slot_info** %9, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.ca_slot_info, %struct.ca_slot_info* %54, i64 %56
  %58 = getelementptr inbounds %struct.ca_slot_info, %struct.ca_slot_info* %57, i32 0, i32 0
  store i64 0, i64* %58, align 8
  br label %59

59:                                               ; preds = %48, %42
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %10, align 4
  br label %39

63:                                               ; preds = %39
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %63, %35
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @dvb_ringbuffer_free(%struct.dvb_ringbuffer*) #2

declare dso_local i32 @dvb_ringbuffer_write(%struct.dvb_ringbuffer*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
