; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_ioc.c_bfa_ioc_mbox_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_ioc.c_bfa_ioc_mbox_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@BFI_IOC_MSGLEN_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_ioc*, i8*, i32)* @bfa_ioc_mbox_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_ioc_mbox_send(%struct.bfa_ioc* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.bfa_ioc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.bfa_ioc* %0, %struct.bfa_ioc** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to i32*
  store i32* %10, i32** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @BFI_IOC_MSGLEN_MAX, align 4
  %13 = icmp sle i32 %11, %12
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %40, %3
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = udiv i64 %21, 4
  %23 = icmp ult i64 %19, %22
  br i1 %23, label %24, label %43

24:                                               ; preds = %17
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @cpu_to_le32(i32 %29)
  %31 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %32 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 4
  %38 = add i64 %34, %37
  %39 = call i32 @writel(i32 %30, i64 %38)
  br label %40

40:                                               ; preds = %24
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %8, align 4
  br label %17

43:                                               ; preds = %17
  br label %44

44:                                               ; preds = %61, %43
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = load i32, i32* @BFI_IOC_MSGLEN_MAX, align 4
  %48 = sext i32 %47 to i64
  %49 = udiv i64 %48, 4
  %50 = icmp ult i64 %46, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %44
  %52 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %53 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 4
  %59 = add i64 %55, %58
  %60 = call i32 @writel(i32 0, i64 %59)
  br label %61

61:                                               ; preds = %51
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %44

64:                                               ; preds = %44
  %65 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %66 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @writel(i32 1, i64 %68)
  %70 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %71 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @readl(i64 %73)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
