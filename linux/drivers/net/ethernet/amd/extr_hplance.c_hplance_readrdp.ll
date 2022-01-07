; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_hplance.c_hplance_readrdp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_hplance.c_hplance_readrdp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lance_private = type { i64 }

@HPLANCE_REGOFF = common dso_local global i64 0, align 8
@LANCE_RDP = common dso_local global i64 0, align 8
@HPLANCE_STATUS = common dso_local global i64 0, align 8
@LE_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (i8*)* @hplance_readrdp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @hplance_readrdp(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.lance_private*, align 8
  %4 = alloca i16, align 2
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.lance_private*
  store %struct.lance_private* %6, %struct.lance_private** %3, align 8
  br label %7

7:                                                ; preds = %16, %1
  %8 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %9 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @HPLANCE_REGOFF, align 8
  %12 = add nsw i64 %10, %11
  %13 = load i64, i64* @LANCE_RDP, align 8
  %14 = add nsw i64 %12, %13
  %15 = call zeroext i16 @in_be16(i64 %14)
  store i16 %15, i16* %4, align 2
  br label %16

16:                                               ; preds = %7
  %17 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %18 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @HPLANCE_STATUS, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @in_8(i64 %21)
  %23 = load i32, i32* @LE_ACK, align 4
  %24 = and i32 %22, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %7, label %26

26:                                               ; preds = %16
  %27 = load i16, i16* %4, align 2
  ret i16 %27
}

declare dso_local zeroext i16 @in_be16(i64) #1

declare dso_local i32 @in_8(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
