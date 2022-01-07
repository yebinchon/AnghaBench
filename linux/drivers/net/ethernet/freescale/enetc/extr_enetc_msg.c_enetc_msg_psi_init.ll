; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_msg.c_enetc_msg_psi_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_msg.c_enetc_msg_psi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enetc_pf = type { i32, i32, i32, %struct.enetc_si* }
%struct.enetc_si = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [9 x i8] c"%s-vfmsg\00", align 1
@ENETC_SI_INT_IDX = common dso_local global i32 0, align 4
@enetc_msg_psi_msix = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"PSI messaging: request_irq() failed!\0A\00", align 1
@ENETC_SIMSIVR = common dso_local global i32 0, align 4
@enetc_msg_task = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @enetc_msg_psi_init(%struct.enetc_pf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.enetc_pf*, align 8
  %4 = alloca %struct.enetc_si*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.enetc_pf* %0, %struct.enetc_pf** %3, align 8
  %8 = load %struct.enetc_pf*, %struct.enetc_pf** %3, align 8
  %9 = getelementptr inbounds %struct.enetc_pf, %struct.enetc_pf* %8, i32 0, i32 3
  %10 = load %struct.enetc_si*, %struct.enetc_si** %9, align 8
  store %struct.enetc_si* %10, %struct.enetc_si** %4, align 8
  %11 = load %struct.enetc_pf*, %struct.enetc_pf** %3, align 8
  %12 = getelementptr inbounds %struct.enetc_pf, %struct.enetc_pf* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.enetc_si*, %struct.enetc_si** %4, align 8
  %15 = getelementptr inbounds %struct.enetc_si, %struct.enetc_si* %14, i32 0, i32 2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @snprintf(i32 %13, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = load %struct.enetc_si*, %struct.enetc_si** %4, align 8
  %21 = getelementptr inbounds %struct.enetc_si, %struct.enetc_si* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = load i32, i32* @ENETC_SI_INT_IDX, align 4
  %24 = call i32 @pci_irq_vector(%struct.TYPE_4__* %22, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @enetc_msg_psi_msix, align 4
  %27 = load %struct.enetc_pf*, %struct.enetc_pf** %3, align 8
  %28 = getelementptr inbounds %struct.enetc_pf, %struct.enetc_pf* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.enetc_si*, %struct.enetc_si** %4, align 8
  %31 = call i32 @request_irq(i32 %25, i32 %26, i32 0, i32 %29, %struct.enetc_si* %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %1
  %35 = load %struct.enetc_si*, %struct.enetc_si** %4, align 8
  %36 = getelementptr inbounds %struct.enetc_si, %struct.enetc_si* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = call i32 @dev_err(i32* %38, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %2, align 4
  br label %90

41:                                               ; preds = %1
  %42 = load %struct.enetc_si*, %struct.enetc_si** %4, align 8
  %43 = getelementptr inbounds %struct.enetc_si, %struct.enetc_si* %42, i32 0, i32 0
  %44 = load i32, i32* @ENETC_SIMSIVR, align 4
  %45 = load i32, i32* @ENETC_SI_INT_IDX, align 4
  %46 = call i32 @enetc_wr(i32* %43, i32 %44, i32 %45)
  %47 = load %struct.enetc_pf*, %struct.enetc_pf** %3, align 8
  %48 = getelementptr inbounds %struct.enetc_pf, %struct.enetc_pf* %47, i32 0, i32 1
  %49 = load i32, i32* @enetc_msg_task, align 4
  %50 = call i32 @INIT_WORK(i32* %48, i32 %49)
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %65, %41
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.enetc_pf*, %struct.enetc_pf** %3, align 8
  %54 = getelementptr inbounds %struct.enetc_pf, %struct.enetc_pf* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %51
  %58 = load %struct.enetc_si*, %struct.enetc_si** %4, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @enetc_msg_alloc_mbx(%struct.enetc_si* %58, i32 %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %72

64:                                               ; preds = %57
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %51

68:                                               ; preds = %51
  %69 = load %struct.enetc_si*, %struct.enetc_si** %4, align 8
  %70 = getelementptr inbounds %struct.enetc_si, %struct.enetc_si* %69, i32 0, i32 0
  %71 = call i32 @enetc_msg_enable_mr_int(i32* %70)
  store i32 0, i32* %2, align 4
  br label %90

72:                                               ; preds = %63
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %82, %72
  %76 = load i32, i32* %6, align 4
  %77 = icmp sge i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %75
  %79 = load %struct.enetc_si*, %struct.enetc_si** %4, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @enetc_msg_free_mbx(%struct.enetc_si* %79, i32 %80)
  br label %82

82:                                               ; preds = %78
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %6, align 4
  br label %75

85:                                               ; preds = %75
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.enetc_si*, %struct.enetc_si** %4, align 8
  %88 = call i32 @free_irq(i32 %86, %struct.enetc_si* %87)
  %89 = load i32, i32* %7, align 4
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %85, %68, %34
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @pci_irq_vector(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.enetc_si*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @enetc_wr(i32*, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @enetc_msg_alloc_mbx(%struct.enetc_si*, i32) #1

declare dso_local i32 @enetc_msg_enable_mr_int(i32*) #1

declare dso_local i32 @enetc_msg_free_mbx(%struct.enetc_si*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.enetc_si*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
