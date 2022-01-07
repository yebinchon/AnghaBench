; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_set_clean_rxdesc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_set_clean_rxdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_adapter = type { %struct.TYPE_3__*, %struct.jme_ring* }
%struct.TYPE_3__ = type { i32 }
%struct.jme_ring = type { %struct.jme_buffer_info*, %struct.rxdesc* }
%struct.jme_buffer_info = type { i32, i64 }
%struct.rxdesc = type { %struct.TYPE_4__, i64* }
%struct.TYPE_4__ = type { i32, i32, i8*, i8* }

@NETIF_F_HIGHDMA = common dso_local global i32 0, align 4
@RXFLAG_64BIT = common dso_local global i32 0, align 4
@RXFLAG_OWN = common dso_local global i32 0, align 4
@RXFLAG_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jme_adapter*, i32)* @jme_set_clean_rxdesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jme_set_clean_rxdesc(%struct.jme_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.jme_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.jme_ring*, align 8
  %6 = alloca %struct.rxdesc*, align 8
  %7 = alloca %struct.jme_buffer_info*, align 8
  store %struct.jme_adapter* %0, %struct.jme_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %8, i32 0, i32 1
  %10 = load %struct.jme_ring*, %struct.jme_ring** %9, align 8
  %11 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %10, i64 0
  store %struct.jme_ring* %11, %struct.jme_ring** %5, align 8
  %12 = load %struct.jme_ring*, %struct.jme_ring** %5, align 8
  %13 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %12, i32 0, i32 1
  %14 = load %struct.rxdesc*, %struct.rxdesc** %13, align 8
  store %struct.rxdesc* %14, %struct.rxdesc** %6, align 8
  %15 = load %struct.jme_ring*, %struct.jme_ring** %5, align 8
  %16 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %15, i32 0, i32 0
  %17 = load %struct.jme_buffer_info*, %struct.jme_buffer_info** %16, align 8
  store %struct.jme_buffer_info* %17, %struct.jme_buffer_info** %7, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.rxdesc*, %struct.rxdesc** %6, align 8
  %20 = sext i32 %18 to i64
  %21 = getelementptr inbounds %struct.rxdesc, %struct.rxdesc* %19, i64 %20
  store %struct.rxdesc* %21, %struct.rxdesc** %6, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.jme_buffer_info*, %struct.jme_buffer_info** %7, align 8
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds %struct.jme_buffer_info, %struct.jme_buffer_info* %23, i64 %24
  store %struct.jme_buffer_info* %25, %struct.jme_buffer_info** %7, align 8
  %26 = load %struct.rxdesc*, %struct.rxdesc** %6, align 8
  %27 = getelementptr inbounds %struct.rxdesc, %struct.rxdesc* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  store i64 0, i64* %29, align 8
  %30 = load %struct.rxdesc*, %struct.rxdesc** %6, align 8
  %31 = getelementptr inbounds %struct.rxdesc, %struct.rxdesc* %30, i32 0, i32 1
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 1
  store i64 0, i64* %33, align 8
  %34 = load %struct.jme_buffer_info*, %struct.jme_buffer_info** %7, align 8
  %35 = getelementptr inbounds %struct.jme_buffer_info, %struct.jme_buffer_info* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = ashr i32 %37, 32
  %39 = call i8* @cpu_to_le32(i32 %38)
  %40 = load %struct.rxdesc*, %struct.rxdesc** %6, align 8
  %41 = getelementptr inbounds %struct.rxdesc, %struct.rxdesc* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 3
  store i8* %39, i8** %42, align 8
  %43 = load %struct.jme_buffer_info*, %struct.jme_buffer_info** %7, align 8
  %44 = getelementptr inbounds %struct.jme_buffer_info, %struct.jme_buffer_info* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = sext i32 %46 to i64
  %48 = and i64 %47, 4294967295
  %49 = trunc i64 %48 to i32
  %50 = call i8* @cpu_to_le32(i32 %49)
  %51 = load %struct.rxdesc*, %struct.rxdesc** %6, align 8
  %52 = getelementptr inbounds %struct.rxdesc, %struct.rxdesc* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  store i8* %50, i8** %53, align 8
  %54 = load %struct.jme_buffer_info*, %struct.jme_buffer_info** %7, align 8
  %55 = getelementptr inbounds %struct.jme_buffer_info, %struct.jme_buffer_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @cpu_to_le16(i32 %56)
  %58 = load %struct.rxdesc*, %struct.rxdesc** %6, align 8
  %59 = getelementptr inbounds %struct.rxdesc, %struct.rxdesc* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  store i32 %57, i32* %60, align 4
  %61 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %62 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %61, i32 0, i32 0
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @NETIF_F_HIGHDMA, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %2
  %70 = load i32, i32* @RXFLAG_64BIT, align 4
  %71 = load %struct.rxdesc*, %struct.rxdesc** %6, align 8
  %72 = getelementptr inbounds %struct.rxdesc, %struct.rxdesc* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 8
  br label %74

74:                                               ; preds = %69, %2
  %75 = call i32 (...) @wmb()
  %76 = load i32, i32* @RXFLAG_OWN, align 4
  %77 = load i32, i32* @RXFLAG_INT, align 4
  %78 = or i32 %76, %77
  %79 = load %struct.rxdesc*, %struct.rxdesc** %6, align 8
  %80 = getelementptr inbounds %struct.rxdesc, %struct.rxdesc* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %78
  store i32 %83, i32* %81, align 8
  ret void
}

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
