; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.c_cudbg_get_entity_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.c_cudbg_get_entity_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cudbg_entity_hdr = type { i32 }
%struct.cudbg_hdr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cudbg_entity_hdr* @cudbg_get_entity_hdr(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cudbg_hdr*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.cudbg_hdr*
  store %struct.cudbg_hdr* %7, %struct.cudbg_hdr** %5, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = load %struct.cudbg_hdr*, %struct.cudbg_hdr** %5, align 8
  %10 = getelementptr inbounds %struct.cudbg_hdr, %struct.cudbg_hdr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8, i8* %8, i64 %12
  %14 = load i32, i32* %4, align 4
  %15 = sub nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = mul i64 4, %16
  %18 = getelementptr inbounds i8, i8* %13, i64 %17
  %19 = bitcast i8* %18 to %struct.cudbg_entity_hdr*
  ret %struct.cudbg_entity_hdr* %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
