; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_hplance.c_hplance_writerap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_hplance.c_hplance_writerap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lance_private = type { i64 }

@HPLANCE_REGOFF = common dso_local global i64 0, align 8
@LANCE_RAP = common dso_local global i64 0, align 8
@HPLANCE_STATUS = common dso_local global i64 0, align 8
@LE_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i16)* @hplance_writerap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hplance_writerap(i8* %0, i16 zeroext %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i16, align 2
  %5 = alloca %struct.lance_private*, align 8
  store i8* %0, i8** %3, align 8
  store i16 %1, i16* %4, align 2
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.lance_private*
  store %struct.lance_private* %7, %struct.lance_private** %5, align 8
  br label %8

8:                                                ; preds = %18, %2
  %9 = load %struct.lance_private*, %struct.lance_private** %5, align 8
  %10 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @HPLANCE_REGOFF, align 8
  %13 = add nsw i64 %11, %12
  %14 = load i64, i64* @LANCE_RAP, align 8
  %15 = add nsw i64 %13, %14
  %16 = load i16, i16* %4, align 2
  %17 = call i32 @out_be16(i64 %15, i16 zeroext %16)
  br label %18

18:                                               ; preds = %8
  %19 = load %struct.lance_private*, %struct.lance_private** %5, align 8
  %20 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @HPLANCE_STATUS, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @in_8(i64 %23)
  %25 = load i32, i32* @LE_ACK, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %8, label %28

28:                                               ; preds = %18
  ret void
}

declare dso_local i32 @out_be16(i64, i16 zeroext) #1

declare dso_local i32 @in_8(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
