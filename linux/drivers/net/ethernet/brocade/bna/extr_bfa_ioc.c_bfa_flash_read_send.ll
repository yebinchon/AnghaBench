; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_ioc.c_bfa_flash_read_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_ioc.c_bfa_flash_read_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_flash = type { i64, %struct.TYPE_2__, i32, i32, i64, i64, i32, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.bfi_flash_read_req = type { i32, i32, i8*, i8*, i32, i8* }

@BFA_FLASH_DMA_BUF_SZ = common dso_local global i64 0, align 8
@BFI_MC_FLASH = common dso_local global i32 0, align 4
@BFI_FLASH_H2I_READ_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @bfa_flash_read_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_flash_read_send(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.bfa_flash*, align 8
  %4 = alloca %struct.bfi_flash_read_req*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.bfa_flash*
  store %struct.bfa_flash* %7, %struct.bfa_flash** %3, align 8
  %8 = load %struct.bfa_flash*, %struct.bfa_flash** %3, align 8
  %9 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.bfi_flash_read_req*
  store %struct.bfi_flash_read_req* %12, %struct.bfi_flash_read_req** %4, align 8
  %13 = load %struct.bfa_flash*, %struct.bfa_flash** %3, align 8
  %14 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %13, i32 0, i32 7
  %15 = load i64, i64* %14, align 8
  %16 = call i8* @be32_to_cpu(i64 %15)
  %17 = load %struct.bfi_flash_read_req*, %struct.bfi_flash_read_req** %4, align 8
  %18 = getelementptr inbounds %struct.bfi_flash_read_req, %struct.bfi_flash_read_req* %17, i32 0, i32 5
  store i8* %16, i8** %18, align 8
  %19 = load %struct.bfa_flash*, %struct.bfa_flash** %3, align 8
  %20 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.bfi_flash_read_req*, %struct.bfi_flash_read_req** %4, align 8
  %23 = getelementptr inbounds %struct.bfi_flash_read_req, %struct.bfi_flash_read_req* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 8
  %24 = load %struct.bfa_flash*, %struct.bfa_flash** %3, align 8
  %25 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.bfa_flash*, %struct.bfa_flash** %3, align 8
  %28 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %26, %29
  %31 = call i8* @be32_to_cpu(i64 %30)
  %32 = load %struct.bfi_flash_read_req*, %struct.bfi_flash_read_req** %4, align 8
  %33 = getelementptr inbounds %struct.bfi_flash_read_req, %struct.bfi_flash_read_req* %32, i32 0, i32 3
  store i8* %31, i8** %33, align 8
  %34 = load %struct.bfa_flash*, %struct.bfa_flash** %3, align 8
  %35 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @BFA_FLASH_DMA_BUF_SZ, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %1
  %40 = load %struct.bfa_flash*, %struct.bfa_flash** %3, align 8
  %41 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  br label %45

43:                                               ; preds = %1
  %44 = load i64, i64* @BFA_FLASH_DMA_BUF_SZ, align 8
  br label %45

45:                                               ; preds = %43, %39
  %46 = phi i64 [ %42, %39 ], [ %44, %43 ]
  store i64 %46, i64* %5, align 8
  %47 = load i64, i64* %5, align 8
  %48 = call i8* @be32_to_cpu(i64 %47)
  %49 = load %struct.bfi_flash_read_req*, %struct.bfi_flash_read_req** %4, align 8
  %50 = getelementptr inbounds %struct.bfi_flash_read_req, %struct.bfi_flash_read_req* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  %51 = load %struct.bfi_flash_read_req*, %struct.bfi_flash_read_req** %4, align 8
  %52 = getelementptr inbounds %struct.bfi_flash_read_req, %struct.bfi_flash_read_req* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @BFI_MC_FLASH, align 4
  %55 = load i32, i32* @BFI_FLASH_H2I_READ_REQ, align 4
  %56 = load %struct.bfa_flash*, %struct.bfa_flash** %3, align 8
  %57 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @bfa_ioc_portid(i32 %58)
  %60 = call i32 @bfi_h2i_set(i32 %53, i32 %54, i32 %55, i32 %59)
  %61 = load %struct.bfi_flash_read_req*, %struct.bfi_flash_read_req** %4, align 8
  %62 = getelementptr inbounds %struct.bfi_flash_read_req, %struct.bfi_flash_read_req* %61, i32 0, i32 0
  %63 = load i64, i64* %5, align 8
  %64 = load %struct.bfa_flash*, %struct.bfa_flash** %3, align 8
  %65 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @bfa_alen_set(i32* %62, i64 %63, i32 %66)
  %68 = load %struct.bfa_flash*, %struct.bfa_flash** %3, align 8
  %69 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.bfa_flash*, %struct.bfa_flash** %3, align 8
  %72 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %71, i32 0, i32 1
  %73 = call i32 @bfa_nw_ioc_mbox_queue(i32 %70, %struct.TYPE_2__* %72, i32* null, i32* null)
  ret void
}

declare dso_local i8* @be32_to_cpu(i64) #1

declare dso_local i32 @bfi_h2i_set(i32, i32, i32, i32) #1

declare dso_local i32 @bfa_ioc_portid(i32) #1

declare dso_local i32 @bfa_alen_set(i32*, i64, i32) #1

declare dso_local i32 @bfa_nw_ioc_mbox_queue(i32, %struct.TYPE_2__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
