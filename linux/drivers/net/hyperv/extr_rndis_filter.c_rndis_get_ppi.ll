; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_rndis_filter.c_rndis_get_ppi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_rndis_filter.c_rndis_get_ppi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rndis_packet = type { i64, i32 }
%struct.rndis_per_packet_info = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.rndis_packet*, i64, i64)* @rndis_get_ppi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @rndis_get_ppi(%struct.rndis_packet* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rndis_packet*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.rndis_per_packet_info*, align 8
  %9 = alloca i32, align 4
  store %struct.rndis_packet* %0, %struct.rndis_packet** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.rndis_packet*, %struct.rndis_packet** %5, align 8
  %11 = getelementptr inbounds %struct.rndis_packet, %struct.rndis_packet* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %65

15:                                               ; preds = %3
  %16 = load %struct.rndis_packet*, %struct.rndis_packet** %5, align 8
  %17 = ptrtoint %struct.rndis_packet* %16 to i64
  %18 = load %struct.rndis_packet*, %struct.rndis_packet** %5, align 8
  %19 = getelementptr inbounds %struct.rndis_packet, %struct.rndis_packet* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %17, %20
  %22 = inttoptr i64 %21 to %struct.rndis_per_packet_info*
  store %struct.rndis_per_packet_info* %22, %struct.rndis_per_packet_info** %8, align 8
  %23 = load %struct.rndis_packet*, %struct.rndis_packet** %5, align 8
  %24 = getelementptr inbounds %struct.rndis_packet, %struct.rndis_packet* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %9, align 4
  br label %26

26:                                               ; preds = %49, %15
  %27 = load i32, i32* %9, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %64

29:                                               ; preds = %26
  %30 = load %struct.rndis_per_packet_info*, %struct.rndis_per_packet_info** %8, align 8
  %31 = getelementptr inbounds %struct.rndis_per_packet_info, %struct.rndis_per_packet_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %29
  %36 = load %struct.rndis_per_packet_info*, %struct.rndis_per_packet_info** %8, align 8
  %37 = getelementptr inbounds %struct.rndis_per_packet_info, %struct.rndis_per_packet_info* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %7, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %35
  %42 = load %struct.rndis_per_packet_info*, %struct.rndis_per_packet_info** %8, align 8
  %43 = ptrtoint %struct.rndis_per_packet_info* %42 to i64
  %44 = load %struct.rndis_per_packet_info*, %struct.rndis_per_packet_info** %8, align 8
  %45 = getelementptr inbounds %struct.rndis_per_packet_info, %struct.rndis_per_packet_info* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %43, %46
  %48 = inttoptr i64 %47 to i8*
  store i8* %48, i8** %4, align 8
  br label %65

49:                                               ; preds = %35, %29
  %50 = load %struct.rndis_per_packet_info*, %struct.rndis_per_packet_info** %8, align 8
  %51 = getelementptr inbounds %struct.rndis_per_packet_info, %struct.rndis_per_packet_info* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = sub nsw i64 %54, %52
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %9, align 4
  %57 = load %struct.rndis_per_packet_info*, %struct.rndis_per_packet_info** %8, align 8
  %58 = ptrtoint %struct.rndis_per_packet_info* %57 to i64
  %59 = load %struct.rndis_per_packet_info*, %struct.rndis_per_packet_info** %8, align 8
  %60 = getelementptr inbounds %struct.rndis_per_packet_info, %struct.rndis_per_packet_info* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %58, %61
  %63 = inttoptr i64 %62 to %struct.rndis_per_packet_info*
  store %struct.rndis_per_packet_info* %63, %struct.rndis_per_packet_info** %8, align 8
  br label %26

64:                                               ; preds = %26
  store i8* null, i8** %4, align 8
  br label %65

65:                                               ; preds = %64, %41, %14
  %66 = load i8*, i8** %4, align 8
  ret i8* %66
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
