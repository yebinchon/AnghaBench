; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_common.c_b53_arl_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_common.c_b53_arl_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b53_device = type { i32 }
%struct.b53_arl_entry = type { i32, i32, i32, i32, i32 }

@B53_ARLIO_PAGE = common dso_local global i32 0, align 4
@B53_MAC_ADDR_IDX = common dso_local global i32 0, align 4
@B53_VLAN_ID_IDX = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b53_device*, i32, i32, i8*, i32, i32)* @b53_arl_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b53_arl_op(%struct.b53_device* %0, i32 %1, i32 %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.b53_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.b53_arl_entry, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.b53_device* %0, %struct.b53_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %20 = load i8*, i8** %11, align 8
  %21 = call i32 @ether_addr_to_u64(i8* %20)
  store i32 %21, i32* %16, align 4
  %22 = load %struct.b53_device*, %struct.b53_device** %8, align 8
  %23 = load i32, i32* @B53_ARLIO_PAGE, align 4
  %24 = load i32, i32* @B53_MAC_ADDR_IDX, align 4
  %25 = load i32, i32* %16, align 4
  %26 = call i32 @b53_write48(%struct.b53_device* %22, i32 %23, i32 %24, i32 %25)
  %27 = load %struct.b53_device*, %struct.b53_device** %8, align 8
  %28 = load i32, i32* @B53_ARLIO_PAGE, align 4
  %29 = load i32, i32* @B53_VLAN_ID_IDX, align 4
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @b53_write16(%struct.b53_device* %27, i32 %28, i32 %29, i32 %30)
  %32 = load %struct.b53_device*, %struct.b53_device** %8, align 8
  %33 = call i32 @b53_arl_rw_op(%struct.b53_device* %32, i32 1)
  store i32 %33, i32* %19, align 4
  %34 = load i32, i32* %19, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %6
  %37 = load i32, i32* %19, align 4
  store i32 %37, i32* %7, align 4
  br label %81

38:                                               ; preds = %6
  %39 = load %struct.b53_device*, %struct.b53_device** %8, align 8
  %40 = load i32, i32* %16, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %13, align 4
  %43 = call i32 @b53_arl_read(%struct.b53_device* %39, i32 %40, i32 %41, %struct.b53_arl_entry* %14, i32* %18, i32 %42)
  store i32 %43, i32* %19, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load i32, i32* %19, align 4
  store i32 %47, i32* %7, align 4
  br label %81

48:                                               ; preds = %38
  %49 = load i32, i32* %19, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i64 0, i64* %15, align 8
  store i32 1, i32* %18, align 4
  br label %52

52:                                               ; preds = %51, %48
  %53 = call i32 @memset(%struct.b53_arl_entry* %14, i32 0, i32 20)
  %54 = load i32, i32* %10, align 4
  %55 = getelementptr inbounds %struct.b53_arl_entry, %struct.b53_arl_entry* %14, i32 0, i32 0
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* %13, align 4
  %57 = getelementptr inbounds %struct.b53_arl_entry, %struct.b53_arl_entry* %14, i32 0, i32 1
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* %12, align 4
  %59 = getelementptr inbounds %struct.b53_arl_entry, %struct.b53_arl_entry* %14, i32 0, i32 4
  store i32 %58, i32* %59, align 4
  %60 = getelementptr inbounds %struct.b53_arl_entry, %struct.b53_arl_entry* %14, i32 0, i32 2
  store i32 1, i32* %60, align 4
  %61 = getelementptr inbounds %struct.b53_arl_entry, %struct.b53_arl_entry* %14, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load i8*, i8** %11, align 8
  %64 = load i32, i32* @ETH_ALEN, align 4
  %65 = call i32 @memcpy(i32 %62, i8* %63, i32 %64)
  %66 = call i32 @b53_arl_from_entry(i32* %17, i64* %15, %struct.b53_arl_entry* %14)
  %67 = load %struct.b53_device*, %struct.b53_device** %8, align 8
  %68 = load i32, i32* @B53_ARLIO_PAGE, align 4
  %69 = load i32, i32* %18, align 4
  %70 = call i32 @B53_ARLTBL_MAC_VID_ENTRY(i32 %69)
  %71 = load i32, i32* %17, align 4
  %72 = call i32 @b53_write64(%struct.b53_device* %67, i32 %68, i32 %70, i32 %71)
  %73 = load %struct.b53_device*, %struct.b53_device** %8, align 8
  %74 = load i32, i32* @B53_ARLIO_PAGE, align 4
  %75 = load i32, i32* %18, align 4
  %76 = call i32 @B53_ARLTBL_DATA_ENTRY(i32 %75)
  %77 = load i64, i64* %15, align 8
  %78 = call i32 @b53_write32(%struct.b53_device* %73, i32 %74, i32 %76, i64 %77)
  %79 = load %struct.b53_device*, %struct.b53_device** %8, align 8
  %80 = call i32 @b53_arl_rw_op(%struct.b53_device* %79, i32 0)
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %52, %46, %36
  %82 = load i32, i32* %7, align 4
  ret i32 %82
}

declare dso_local i32 @ether_addr_to_u64(i8*) #1

declare dso_local i32 @b53_write48(%struct.b53_device*, i32, i32, i32) #1

declare dso_local i32 @b53_write16(%struct.b53_device*, i32, i32, i32) #1

declare dso_local i32 @b53_arl_rw_op(%struct.b53_device*, i32) #1

declare dso_local i32 @b53_arl_read(%struct.b53_device*, i32, i32, %struct.b53_arl_entry*, i32*, i32) #1

declare dso_local i32 @memset(%struct.b53_arl_entry*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @b53_arl_from_entry(i32*, i64*, %struct.b53_arl_entry*) #1

declare dso_local i32 @b53_write64(%struct.b53_device*, i32, i32, i32) #1

declare dso_local i32 @B53_ARLTBL_MAC_VID_ENTRY(i32) #1

declare dso_local i32 @b53_write32(%struct.b53_device*, i32, i32, i64) #1

declare dso_local i32 @B53_ARLTBL_DATA_ENTRY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
