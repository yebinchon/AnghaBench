; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_ioc.c_bfa_ioc_fw_ver_compatible.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_ioc.c_bfa_ioc_fw_ver_compatible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfi_ioc_image_hdr = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfi_ioc_image_hdr*, %struct.bfi_ioc_image_hdr*)* @bfa_ioc_fw_ver_compatible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfa_ioc_fw_ver_compatible(%struct.bfi_ioc_image_hdr* %0, %struct.bfi_ioc_image_hdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bfi_ioc_image_hdr*, align 8
  %5 = alloca %struct.bfi_ioc_image_hdr*, align 8
  store %struct.bfi_ioc_image_hdr* %0, %struct.bfi_ioc_image_hdr** %4, align 8
  store %struct.bfi_ioc_image_hdr* %1, %struct.bfi_ioc_image_hdr** %5, align 8
  %6 = load %struct.bfi_ioc_image_hdr*, %struct.bfi_ioc_image_hdr** %4, align 8
  %7 = getelementptr inbounds %struct.bfi_ioc_image_hdr, %struct.bfi_ioc_image_hdr* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.bfi_ioc_image_hdr*, %struct.bfi_ioc_image_hdr** %5, align 8
  %10 = getelementptr inbounds %struct.bfi_ioc_image_hdr, %struct.bfi_ioc_image_hdr* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %82

14:                                               ; preds = %2
  %15 = load %struct.bfi_ioc_image_hdr*, %struct.bfi_ioc_image_hdr** %4, align 8
  %16 = getelementptr inbounds %struct.bfi_ioc_image_hdr, %struct.bfi_ioc_image_hdr* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.bfi_ioc_image_hdr*, %struct.bfi_ioc_image_hdr** %5, align 8
  %20 = getelementptr inbounds %struct.bfi_ioc_image_hdr, %struct.bfi_ioc_image_hdr* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %18, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %82

25:                                               ; preds = %14
  %26 = load %struct.bfi_ioc_image_hdr*, %struct.bfi_ioc_image_hdr** %4, align 8
  %27 = getelementptr inbounds %struct.bfi_ioc_image_hdr, %struct.bfi_ioc_image_hdr* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.bfi_ioc_image_hdr*, %struct.bfi_ioc_image_hdr** %5, align 8
  %31 = getelementptr inbounds %struct.bfi_ioc_image_hdr, %struct.bfi_ioc_image_hdr* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %29, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %82

36:                                               ; preds = %25
  %37 = load %struct.bfi_ioc_image_hdr*, %struct.bfi_ioc_image_hdr** %4, align 8
  %38 = getelementptr inbounds %struct.bfi_ioc_image_hdr, %struct.bfi_ioc_image_hdr* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.bfi_ioc_image_hdr*, %struct.bfi_ioc_image_hdr** %5, align 8
  %42 = getelementptr inbounds %struct.bfi_ioc_image_hdr, %struct.bfi_ioc_image_hdr* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %40, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %82

47:                                               ; preds = %36
  %48 = load %struct.bfi_ioc_image_hdr*, %struct.bfi_ioc_image_hdr** %4, align 8
  %49 = getelementptr inbounds %struct.bfi_ioc_image_hdr, %struct.bfi_ioc_image_hdr* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.bfi_ioc_image_hdr*, %struct.bfi_ioc_image_hdr** %5, align 8
  %53 = getelementptr inbounds %struct.bfi_ioc_image_hdr, %struct.bfi_ioc_image_hdr* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %51, %55
  br i1 %56, label %57, label %81

57:                                               ; preds = %47
  %58 = load %struct.bfi_ioc_image_hdr*, %struct.bfi_ioc_image_hdr** %4, align 8
  %59 = getelementptr inbounds %struct.bfi_ioc_image_hdr, %struct.bfi_ioc_image_hdr* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.bfi_ioc_image_hdr*, %struct.bfi_ioc_image_hdr** %5, align 8
  %63 = getelementptr inbounds %struct.bfi_ioc_image_hdr, %struct.bfi_ioc_image_hdr* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %61, %65
  br i1 %66, label %67, label %81

67:                                               ; preds = %57
  %68 = load %struct.bfi_ioc_image_hdr*, %struct.bfi_ioc_image_hdr** %4, align 8
  %69 = getelementptr inbounds %struct.bfi_ioc_image_hdr, %struct.bfi_ioc_image_hdr* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 5
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.bfi_ioc_image_hdr*, %struct.bfi_ioc_image_hdr** %5, align 8
  %73 = getelementptr inbounds %struct.bfi_ioc_image_hdr, %struct.bfi_ioc_image_hdr* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 5
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %71, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %67
  %78 = load %struct.bfi_ioc_image_hdr*, %struct.bfi_ioc_image_hdr** %4, align 8
  %79 = load %struct.bfi_ioc_image_hdr*, %struct.bfi_ioc_image_hdr** %5, align 8
  %80 = call i32 @bfa_ioc_fwver_md5_check(%struct.bfi_ioc_image_hdr* %78, %struct.bfi_ioc_image_hdr* %79)
  store i32 %80, i32* %3, align 4
  br label %82

81:                                               ; preds = %67, %57, %47
  store i32 1, i32* %3, align 4
  br label %82

82:                                               ; preds = %81, %77, %46, %35, %24, %13
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @bfa_ioc_fwver_md5_check(%struct.bfi_ioc_image_hdr*, %struct.bfi_ioc_image_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
