; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene-v2/extr_ring.c_xge_setup_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene-v2/extr_ring.c_xge_setup_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xge_desc_ring = type { i32, %struct.xge_raw_desc* }
%struct.xge_raw_desc = type { i8*, i8* }

@XGENE_ENET_NUM_DESC = common dso_local global i32 0, align 4
@XGENE_ENET_DESC_SIZE = common dso_local global i32 0, align 4
@E = common dso_local global i32 0, align 4
@PKT_SIZE = common dso_local global i32 0, align 4
@SLOT_EMPTY = common dso_local global i32 0, align 4
@NEXT_DESC_ADDRL = common dso_local global i32 0, align 4
@NEXT_DESC_ADDRH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xge_setup_desc(%struct.xge_desc_ring* %0) #0 {
  %2 = alloca %struct.xge_desc_ring*, align 8
  %3 = alloca %struct.xge_raw_desc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.xge_desc_ring* %0, %struct.xge_desc_ring** %2, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %52, %1
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @XGENE_ENET_NUM_DESC, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %55

12:                                               ; preds = %8
  %13 = load %struct.xge_desc_ring*, %struct.xge_desc_ring** %2, align 8
  %14 = getelementptr inbounds %struct.xge_desc_ring, %struct.xge_desc_ring* %13, i32 0, i32 1
  %15 = load %struct.xge_raw_desc*, %struct.xge_raw_desc** %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.xge_raw_desc, %struct.xge_raw_desc* %15, i64 %17
  store %struct.xge_raw_desc* %18, %struct.xge_raw_desc** %3, align 8
  %19 = load i32, i32* %7, align 4
  %20 = add nsw i32 %19, 1
  %21 = load i32, i32* @XGENE_ENET_NUM_DESC, align 4
  %22 = sub nsw i32 %21, 1
  %23 = and i32 %20, %22
  store i32 %23, i32* %6, align 4
  %24 = load %struct.xge_desc_ring*, %struct.xge_desc_ring** %2, align 8
  %25 = getelementptr inbounds %struct.xge_desc_ring, %struct.xge_desc_ring* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @XGENE_ENET_DESC_SIZE, align 4
  %29 = mul nsw i32 %27, %28
  %30 = add nsw i32 %26, %29
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* @E, align 4
  %32 = call i32 @SET_BITS(i32 %31, i32 1)
  %33 = load i32, i32* @PKT_SIZE, align 4
  %34 = load i32, i32* @SLOT_EMPTY, align 4
  %35 = call i32 @SET_BITS(i32 %33, i32 %34)
  %36 = or i32 %32, %35
  %37 = call i8* @cpu_to_le64(i32 %36)
  %38 = load %struct.xge_raw_desc*, %struct.xge_raw_desc** %3, align 8
  %39 = getelementptr inbounds %struct.xge_raw_desc, %struct.xge_raw_desc* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @upper_32_bits(i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* @NEXT_DESC_ADDRL, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @SET_BITS(i32 %42, i32 %43)
  %45 = load i32, i32* @NEXT_DESC_ADDRH, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @SET_BITS(i32 %45, i32 %46)
  %48 = or i32 %44, %47
  %49 = call i8* @cpu_to_le64(i32 %48)
  %50 = load %struct.xge_raw_desc*, %struct.xge_raw_desc** %3, align 8
  %51 = getelementptr inbounds %struct.xge_raw_desc, %struct.xge_raw_desc* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  br label %52

52:                                               ; preds = %12
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %8

55:                                               ; preds = %8
  ret void
}

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i32 @SET_BITS(i32, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
