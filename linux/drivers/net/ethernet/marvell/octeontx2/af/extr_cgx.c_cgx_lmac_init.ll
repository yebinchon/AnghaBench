; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_cgx.c_cgx_lmac_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_cgx.c_cgx_lmac_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgx = type { i32, i32, %struct.lmac**, i32 }
%struct.lmac = type { i32, i8*, i32, i32, i32, %struct.cgx* }

@CGXX_CMRX_RX_LMACS = common dso_local global i32 0, align 4
@MAX_LMAC_PER_CGX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"cgx_fwi_%d_%d\00", align 1
@CGX_LMAC_FWI = common dso_local global i64 0, align 8
@cgx_fwi_event_handler = common dso_local global i32 0, align 4
@CGXX_CMRX_INT_ENA_W1S = common dso_local global i32 0, align 4
@FW_CGX_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cgx*)* @cgx_lmac_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cgx_lmac_init(%struct.cgx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cgx*, align 8
  %4 = alloca %struct.lmac*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cgx* %0, %struct.cgx** %3, align 8
  %7 = load %struct.cgx*, %struct.cgx** %3, align 8
  %8 = load i32, i32* @CGXX_CMRX_RX_LMACS, align 4
  %9 = call i32 @cgx_read(%struct.cgx* %7, i32 0, i32 %8)
  %10 = and i32 %9, 7
  %11 = load %struct.cgx*, %struct.cgx** %3, align 8
  %12 = getelementptr inbounds %struct.cgx, %struct.cgx* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.cgx*, %struct.cgx** %3, align 8
  %14 = getelementptr inbounds %struct.cgx, %struct.cgx* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @MAX_LMAC_PER_CGX, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i32, i32* @MAX_LMAC_PER_CGX, align 4
  %20 = load %struct.cgx*, %struct.cgx** %3, align 8
  %21 = getelementptr inbounds %struct.cgx, %struct.cgx* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  br label %22

22:                                               ; preds = %18, %1
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %108, %22
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.cgx*, %struct.cgx** %3, align 8
  %26 = getelementptr inbounds %struct.cgx, %struct.cgx* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %111

29:                                               ; preds = %23
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i8* @kcalloc(i32 1, i32 40, i32 %30)
  %32 = bitcast i8* %31 to %struct.lmac*
  store %struct.lmac* %32, %struct.lmac** %4, align 8
  %33 = load %struct.lmac*, %struct.lmac** %4, align 8
  %34 = icmp ne %struct.lmac* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %114

38:                                               ; preds = %29
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i8* @kcalloc(i32 1, i32 16, i32 %39)
  %41 = load %struct.lmac*, %struct.lmac** %4, align 8
  %42 = getelementptr inbounds %struct.lmac, %struct.lmac* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = load %struct.lmac*, %struct.lmac** %4, align 8
  %44 = getelementptr inbounds %struct.lmac, %struct.lmac* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %38
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %114

50:                                               ; preds = %38
  %51 = load %struct.lmac*, %struct.lmac** %4, align 8
  %52 = getelementptr inbounds %struct.lmac, %struct.lmac* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.cgx*, %struct.cgx** %3, align 8
  %55 = getelementptr inbounds %struct.cgx, %struct.cgx* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @sprintf(i8* %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %57)
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.lmac*, %struct.lmac** %4, align 8
  %61 = getelementptr inbounds %struct.lmac, %struct.lmac* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.cgx*, %struct.cgx** %3, align 8
  %63 = load %struct.lmac*, %struct.lmac** %4, align 8
  %64 = getelementptr inbounds %struct.lmac, %struct.lmac* %63, i32 0, i32 5
  store %struct.cgx* %62, %struct.cgx** %64, align 8
  %65 = load %struct.lmac*, %struct.lmac** %4, align 8
  %66 = getelementptr inbounds %struct.lmac, %struct.lmac* %65, i32 0, i32 4
  %67 = call i32 @init_waitqueue_head(i32* %66)
  %68 = load %struct.lmac*, %struct.lmac** %4, align 8
  %69 = getelementptr inbounds %struct.lmac, %struct.lmac* %68, i32 0, i32 3
  %70 = call i32 @mutex_init(i32* %69)
  %71 = load %struct.lmac*, %struct.lmac** %4, align 8
  %72 = getelementptr inbounds %struct.lmac, %struct.lmac* %71, i32 0, i32 2
  %73 = call i32 @spin_lock_init(i32* %72)
  %74 = load %struct.cgx*, %struct.cgx** %3, align 8
  %75 = getelementptr inbounds %struct.cgx, %struct.cgx* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = load i64, i64* @CGX_LMAC_FWI, align 8
  %78 = load i32, i32* %5, align 4
  %79 = mul nsw i32 %78, 9
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %77, %80
  %82 = call i32 @pci_irq_vector(i32 %76, i64 %81)
  %83 = load i32, i32* @cgx_fwi_event_handler, align 4
  %84 = load %struct.lmac*, %struct.lmac** %4, align 8
  %85 = getelementptr inbounds %struct.lmac, %struct.lmac* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = load %struct.lmac*, %struct.lmac** %4, align 8
  %88 = call i32 @request_irq(i32 %82, i32 %83, i32 0, i8* %86, %struct.lmac* %87)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %50
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %2, align 4
  br label %114

93:                                               ; preds = %50
  %94 = load %struct.cgx*, %struct.cgx** %3, align 8
  %95 = load %struct.lmac*, %struct.lmac** %4, align 8
  %96 = getelementptr inbounds %struct.lmac, %struct.lmac* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @CGXX_CMRX_INT_ENA_W1S, align 4
  %99 = load i32, i32* @FW_CGX_INT, align 4
  %100 = call i32 @cgx_write(%struct.cgx* %94, i32 %97, i32 %98, i32 %99)
  %101 = load %struct.lmac*, %struct.lmac** %4, align 8
  %102 = load %struct.cgx*, %struct.cgx** %3, align 8
  %103 = getelementptr inbounds %struct.cgx, %struct.cgx* %102, i32 0, i32 2
  %104 = load %struct.lmac**, %struct.lmac*** %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.lmac*, %struct.lmac** %104, i64 %106
  store %struct.lmac* %101, %struct.lmac** %107, align 8
  br label %108

108:                                              ; preds = %93
  %109 = load i32, i32* %5, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %5, align 4
  br label %23

111:                                              ; preds = %23
  %112 = load %struct.cgx*, %struct.cgx** %3, align 8
  %113 = call i32 @cgx_lmac_verify_fwi_version(%struct.cgx* %112)
  store i32 %113, i32* %2, align 4
  br label %114

114:                                              ; preds = %111, %91, %47, %35
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i32 @cgx_read(%struct.cgx*, i32, i32) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.lmac*) #1

declare dso_local i32 @pci_irq_vector(i32, i64) #1

declare dso_local i32 @cgx_write(%struct.cgx*, i32, i32, i32) #1

declare dso_local i32 @cgx_lmac_verify_fwi_version(%struct.cgx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
