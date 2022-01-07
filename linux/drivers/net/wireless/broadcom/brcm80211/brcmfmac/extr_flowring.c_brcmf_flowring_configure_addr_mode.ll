; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_flowring.c_brcmf_flowring_configure_addr_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_flowring.c_brcmf_flowring_configure_addr_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_flowring = type { i32*, %struct.TYPE_3__**, %struct.TYPE_4__*, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.brcmf_bus = type { %struct.brcmf_pub* }
%struct.brcmf_pub = type { i32 }

@RING_OPEN = common dso_local global i64 0, align 8
@RING_CLOSING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brcmf_flowring_configure_addr_mode(%struct.brcmf_flowring* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.brcmf_flowring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.brcmf_bus*, align 8
  %8 = alloca %struct.brcmf_pub*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.brcmf_flowring* %0, %struct.brcmf_flowring** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.brcmf_flowring*, %struct.brcmf_flowring** %4, align 8
  %12 = getelementptr inbounds %struct.brcmf_flowring, %struct.brcmf_flowring* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.brcmf_bus* @dev_get_drvdata(i32 %13)
  store %struct.brcmf_bus* %14, %struct.brcmf_bus** %7, align 8
  %15 = load %struct.brcmf_bus*, %struct.brcmf_bus** %7, align 8
  %16 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %15, i32 0, i32 0
  %17 = load %struct.brcmf_pub*, %struct.brcmf_pub** %16, align 8
  store %struct.brcmf_pub* %17, %struct.brcmf_pub** %8, align 8
  %18 = load %struct.brcmf_flowring*, %struct.brcmf_flowring** %4, align 8
  %19 = getelementptr inbounds %struct.brcmf_flowring, %struct.brcmf_flowring* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %88

27:                                               ; preds = %3
  store i64 0, i64* %9, align 8
  br label %28

28:                                               ; preds = %77, %27
  %29 = load i64, i64* %9, align 8
  %30 = load %struct.brcmf_flowring*, %struct.brcmf_flowring** %4, align 8
  %31 = getelementptr inbounds %struct.brcmf_flowring, %struct.brcmf_flowring* %30, i32 0, i32 2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = call i64 @ARRAY_SIZE(%struct.TYPE_4__* %32)
  %34 = icmp ult i64 %29, %33
  br i1 %34, label %35, label %80

35:                                               ; preds = %28
  %36 = load %struct.brcmf_flowring*, %struct.brcmf_flowring** %4, align 8
  %37 = getelementptr inbounds %struct.brcmf_flowring, %struct.brcmf_flowring* %36, i32 0, i32 2
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load i64, i64* %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %76

45:                                               ; preds = %35
  %46 = load %struct.brcmf_flowring*, %struct.brcmf_flowring** %4, align 8
  %47 = getelementptr inbounds %struct.brcmf_flowring, %struct.brcmf_flowring* %46, i32 0, i32 2
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load i64, i64* %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %10, align 8
  %53 = load %struct.brcmf_flowring*, %struct.brcmf_flowring** %4, align 8
  %54 = getelementptr inbounds %struct.brcmf_flowring, %struct.brcmf_flowring* %53, i32 0, i32 1
  %55 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %54, align 8
  %56 = load i64, i64* %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %55, i64 %56
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @RING_OPEN, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %45
  br label %77

64:                                               ; preds = %45
  %65 = load i64, i64* @RING_CLOSING, align 8
  %66 = load %struct.brcmf_flowring*, %struct.brcmf_flowring** %4, align 8
  %67 = getelementptr inbounds %struct.brcmf_flowring, %struct.brcmf_flowring* %66, i32 0, i32 1
  %68 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %67, align 8
  %69 = load i64, i64* %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %68, i64 %69
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  store i64 %65, i64* %72, align 8
  %73 = load %struct.brcmf_pub*, %struct.brcmf_pub** %8, align 8
  %74 = load i64, i64* %10, align 8
  %75 = call i32 @brcmf_msgbuf_delete_flowring(%struct.brcmf_pub* %73, i64 %74)
  br label %76

76:                                               ; preds = %64, %35
  br label %77

77:                                               ; preds = %76, %63
  %78 = load i64, i64* %9, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %9, align 8
  br label %28

80:                                               ; preds = %28
  %81 = load i32, i32* %6, align 4
  %82 = load %struct.brcmf_flowring*, %struct.brcmf_flowring** %4, align 8
  %83 = getelementptr inbounds %struct.brcmf_flowring, %struct.brcmf_flowring* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 %81, i32* %87, align 4
  br label %88

88:                                               ; preds = %80, %3
  ret void
}

declare dso_local %struct.brcmf_bus* @dev_get_drvdata(i32) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i32 @brcmf_msgbuf_delete_flowring(%struct.brcmf_pub*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
