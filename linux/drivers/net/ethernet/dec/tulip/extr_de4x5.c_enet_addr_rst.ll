; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_enet_addr_rst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_enet_addr_rst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { %struct.anon }
%struct.anon = type { i8*, i8* }

@ETH_PROM_SIG = common dso_local global i8* null, align 8
@PROBE_LENGTH = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @enet_addr_rst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enet_addr_rst(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.anon, align 8
  %4 = alloca i16, align 2
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i16 0, i16* %4, align 2
  %8 = load i8*, i8** @ETH_PROM_SIG, align 8
  %9 = bitcast %union.anon* %3 to %struct.anon*
  %10 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 0
  store i8* %8, i8** %10, align 8
  %11 = load i8*, i8** @ETH_PROM_SIG, align 8
  %12 = bitcast %union.anon* %3 to %struct.anon*
  %13 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 1
  store i8* %11, i8** %13, align 8
  store i16 16, i16* %4, align 2
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %57, %1
  %15 = load i32, i32* %7, align 4
  %16 = load i16, i16* %4, align 2
  %17 = sext i16 %16 to i32
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %14
  %20 = load i32, i32* %6, align 4
  %21 = load i16, i16* @PROBE_LENGTH, align 2
  %22 = sext i16 %21 to i32
  %23 = load i16, i16* %4, align 2
  %24 = sext i16 %23 to i32
  %25 = add nsw i32 %22, %24
  %26 = sub nsw i32 %25, 1
  %27 = icmp slt i32 %20, %26
  br label %28

28:                                               ; preds = %19, %14
  %29 = phi i1 [ false, %14 ], [ %27, %19 ]
  br i1 %29, label %30, label %60

30:                                               ; preds = %28
  %31 = load i32, i32* %2, align 4
  %32 = call signext i8 @inb(i32 %31)
  store i8 %32, i8* %5, align 1
  %33 = bitcast %union.anon* %3 to [16 x i8]*
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [16 x i8], [16 x i8]* %33, i64 0, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = load i8, i8* %5, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %30
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %56

45:                                               ; preds = %30
  %46 = load i8, i8* %5, align 1
  %47 = sext i8 %46 to i32
  %48 = bitcast %union.anon* %3 to [16 x i8]*
  %49 = getelementptr inbounds [16 x i8], [16 x i8]* %48, i64 0, i64 0
  %50 = load i8, i8* %49, align 8
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %47, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  store i32 1, i32* %7, align 4
  br label %55

54:                                               ; preds = %45
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %54, %53
  br label %56

56:                                               ; preds = %55, %42
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %14

60:                                               ; preds = %28
  ret void
}

declare dso_local signext i8 @inb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
