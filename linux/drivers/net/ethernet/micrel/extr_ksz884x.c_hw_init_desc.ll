; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_hw_init_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_hw_init_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_desc_info = type { i32, i32, %struct.ksz_desc*, %struct.ksz_desc*, i64, i64, i32, i64, %struct.ksz_hw_desc* }
%struct.ksz_desc = type { %struct.TYPE_10__, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i8* }
%struct.TYPE_7__ = type { i8* }
%struct.ksz_hw_desc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ksz_desc_info*, i32)* @hw_init_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hw_init_desc(%struct.ksz_desc_info* %0, i32 %1) #0 {
  %3 = alloca %struct.ksz_desc_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ksz_hw_desc*, align 8
  %8 = alloca %struct.ksz_desc*, align 8
  %9 = alloca %struct.ksz_desc*, align 8
  store %struct.ksz_desc_info* %0, %struct.ksz_desc_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.ksz_desc_info*, %struct.ksz_desc_info** %3, align 8
  %11 = getelementptr inbounds %struct.ksz_desc_info, %struct.ksz_desc_info* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load %struct.ksz_desc_info*, %struct.ksz_desc_info** %3, align 8
  %14 = getelementptr inbounds %struct.ksz_desc_info, %struct.ksz_desc_info* %13, i32 0, i32 8
  %15 = load %struct.ksz_hw_desc*, %struct.ksz_hw_desc** %14, align 8
  store %struct.ksz_hw_desc* %15, %struct.ksz_hw_desc** %7, align 8
  %16 = load %struct.ksz_desc_info*, %struct.ksz_desc_info** %3, align 8
  %17 = getelementptr inbounds %struct.ksz_desc_info, %struct.ksz_desc_info* %16, i32 0, i32 2
  %18 = load %struct.ksz_desc*, %struct.ksz_desc** %17, align 8
  store %struct.ksz_desc* %18, %struct.ksz_desc** %8, align 8
  store %struct.ksz_desc* null, %struct.ksz_desc** %9, align 8
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %46, %2
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.ksz_desc_info*, %struct.ksz_desc_info** %3, align 8
  %22 = getelementptr inbounds %struct.ksz_desc_info, %struct.ksz_desc_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %49

25:                                               ; preds = %19
  %26 = load %struct.ksz_hw_desc*, %struct.ksz_hw_desc** %7, align 8
  %27 = getelementptr inbounds %struct.ksz_hw_desc, %struct.ksz_hw_desc* %26, i32 1
  store %struct.ksz_hw_desc* %27, %struct.ksz_hw_desc** %7, align 8
  %28 = bitcast %struct.ksz_hw_desc* %26 to %struct.TYPE_8__*
  %29 = load %struct.ksz_desc*, %struct.ksz_desc** %8, align 8
  %30 = getelementptr inbounds %struct.ksz_desc, %struct.ksz_desc* %29, i32 0, i32 1
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %30, align 8
  %31 = load %struct.ksz_desc_info*, %struct.ksz_desc_info** %3, align 8
  %32 = getelementptr inbounds %struct.ksz_desc_info, %struct.ksz_desc_info* %31, i32 0, i32 7
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, %33
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %6, align 4
  %38 = load %struct.ksz_desc*, %struct.ksz_desc** %8, align 8
  %39 = getelementptr inbounds %struct.ksz_desc, %struct.ksz_desc* %38, i32 1
  store %struct.ksz_desc* %39, %struct.ksz_desc** %8, align 8
  store %struct.ksz_desc* %38, %struct.ksz_desc** %9, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i8* @cpu_to_le32(i32 %40)
  %42 = load %struct.ksz_desc*, %struct.ksz_desc** %9, align 8
  %43 = getelementptr inbounds %struct.ksz_desc, %struct.ksz_desc* %42, i32 0, i32 1
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  store i8* %41, i8** %45, align 8
  br label %46

46:                                               ; preds = %25
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %19

49:                                               ; preds = %19
  %50 = load %struct.ksz_desc_info*, %struct.ksz_desc_info** %3, align 8
  %51 = getelementptr inbounds %struct.ksz_desc_info, %struct.ksz_desc_info* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 8
  %53 = call i8* @cpu_to_le32(i32 %52)
  %54 = load %struct.ksz_desc*, %struct.ksz_desc** %9, align 8
  %55 = getelementptr inbounds %struct.ksz_desc, %struct.ksz_desc* %54, i32 0, i32 1
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  store i8* %53, i8** %57, align 8
  %58 = load %struct.ksz_desc*, %struct.ksz_desc** %9, align 8
  %59 = getelementptr inbounds %struct.ksz_desc, %struct.ksz_desc* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store i32 1, i32* %62, align 4
  %63 = load %struct.ksz_desc*, %struct.ksz_desc** %9, align 8
  %64 = getelementptr inbounds %struct.ksz_desc, %struct.ksz_desc* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i8* @cpu_to_le32(i32 %67)
  %69 = load %struct.ksz_desc*, %struct.ksz_desc** %9, align 8
  %70 = getelementptr inbounds %struct.ksz_desc, %struct.ksz_desc* %69, i32 0, i32 1
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  store i8* %68, i8** %73, align 8
  %74 = load %struct.ksz_desc_info*, %struct.ksz_desc_info** %3, align 8
  %75 = getelementptr inbounds %struct.ksz_desc_info, %struct.ksz_desc_info* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.ksz_desc_info*, %struct.ksz_desc_info** %3, align 8
  %78 = getelementptr inbounds %struct.ksz_desc_info, %struct.ksz_desc_info* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load %struct.ksz_desc_info*, %struct.ksz_desc_info** %3, align 8
  %80 = getelementptr inbounds %struct.ksz_desc_info, %struct.ksz_desc_info* %79, i32 0, i32 4
  store i64 0, i64* %80, align 8
  %81 = load %struct.ksz_desc_info*, %struct.ksz_desc_info** %3, align 8
  %82 = getelementptr inbounds %struct.ksz_desc_info, %struct.ksz_desc_info* %81, i32 0, i32 5
  store i64 0, i64* %82, align 8
  %83 = load %struct.ksz_desc_info*, %struct.ksz_desc_info** %3, align 8
  %84 = getelementptr inbounds %struct.ksz_desc_info, %struct.ksz_desc_info* %83, i32 0, i32 2
  %85 = load %struct.ksz_desc*, %struct.ksz_desc** %84, align 8
  %86 = load %struct.ksz_desc_info*, %struct.ksz_desc_info** %3, align 8
  %87 = getelementptr inbounds %struct.ksz_desc_info, %struct.ksz_desc_info* %86, i32 0, i32 3
  store %struct.ksz_desc* %85, %struct.ksz_desc** %87, align 8
  ret void
}

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
