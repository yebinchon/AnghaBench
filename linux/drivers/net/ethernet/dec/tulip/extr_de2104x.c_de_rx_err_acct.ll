; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de2104x.c_de_rx_err_acct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de2104x.c_de_rx_err_acct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.de_private = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@rx_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"rx err, slot %d status 0x%x len %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"Oversized Ethernet frame spanned multiple buffers, status %08x!\0A\00", align 1
@RxError = common dso_local global i32 0, align 4
@RxErrCRC = common dso_local global i32 0, align 4
@RxErrFIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.de_private*, i32, i32, i32)* @de_rx_err_acct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @de_rx_err_acct(%struct.de_private* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.de_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.de_private* %0, %struct.de_private** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.de_private*, %struct.de_private** %5, align 8
  %10 = load i32, i32* @rx_err, align 4
  %11 = load %struct.de_private*, %struct.de_private** %5, align 8
  %12 = getelementptr inbounds %struct.de_private, %struct.de_private* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @netif_dbg(%struct.de_private* %9, i32 %10, %struct.TYPE_5__* %13, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15, i32 %16)
  %18 = load i32, i32* %7, align 4
  %19 = and i32 %18, 939524864
  %20 = icmp ne i32 %19, 768
  br i1 %20, label %21, label %41

21:                                               ; preds = %4
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %22, 65535
  %24 = icmp ne i32 %23, 32767
  br i1 %24, label %25, label %40

25:                                               ; preds = %21
  %26 = load %struct.de_private*, %struct.de_private** %5, align 8
  %27 = load i32, i32* @rx_err, align 4
  %28 = load %struct.de_private*, %struct.de_private** %5, align 8
  %29 = getelementptr inbounds %struct.de_private, %struct.de_private* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @netif_warn(%struct.de_private* %26, i32 %27, %struct.TYPE_5__* %30, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load %struct.de_private*, %struct.de_private** %5, align 8
  %34 = getelementptr inbounds %struct.de_private, %struct.de_private* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %25, %21
  br label %93

41:                                               ; preds = %4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @RxError, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %92

46:                                               ; preds = %41
  %47 = load %struct.de_private*, %struct.de_private** %5, align 8
  %48 = getelementptr inbounds %struct.de_private, %struct.de_private* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  %54 = load i32, i32* %7, align 4
  %55 = and i32 %54, 2192
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %46
  %58 = load %struct.de_private*, %struct.de_private** %5, align 8
  %59 = getelementptr inbounds %struct.de_private, %struct.de_private* %58, i32 0, i32 0
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %57, %46
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @RxErrCRC, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %65
  %71 = load %struct.de_private*, %struct.de_private** %5, align 8
  %72 = getelementptr inbounds %struct.de_private, %struct.de_private* %71, i32 0, i32 0
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %70, %65
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @RxErrFIFO, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %78
  %84 = load %struct.de_private*, %struct.de_private** %5, align 8
  %85 = getelementptr inbounds %struct.de_private, %struct.de_private* %84, i32 0, i32 0
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %83, %78
  br label %92

92:                                               ; preds = %91, %41
  br label %93

93:                                               ; preds = %92, %40
  ret void
}

declare dso_local i32 @netif_dbg(%struct.de_private*, i32, %struct.TYPE_5__*, i8*, i32, i32, i32) #1

declare dso_local i32 @netif_warn(%struct.de_private*, i32, %struct.TYPE_5__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
