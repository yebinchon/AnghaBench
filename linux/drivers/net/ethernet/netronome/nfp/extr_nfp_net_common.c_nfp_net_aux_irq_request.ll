; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_aux_irq_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_aux_irq_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net = type { %struct.msix_entry* }
%struct.msix_entry = type { i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"Failed to request IRQ %d (err=%d).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_net*, i32, i8*, i8*, i64, i32, i32)* @nfp_net_aux_irq_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_net_aux_irq_request(%struct.nfp_net* %0, i32 %1, i8* %2, i8* %3, i64 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.nfp_net*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.msix_entry*, align 8
  %17 = alloca i32, align 4
  store %struct.nfp_net* %0, %struct.nfp_net** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %18 = load %struct.nfp_net*, %struct.nfp_net** %9, align 8
  %19 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %18, i32 0, i32 0
  %20 = load %struct.msix_entry*, %struct.msix_entry** %19, align 8
  %21 = load i32, i32* %14, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %20, i64 %22
  store %struct.msix_entry* %23, %struct.msix_entry** %16, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = load i64, i64* %13, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = load %struct.nfp_net*, %struct.nfp_net** %9, align 8
  %28 = call i32 @nfp_net_name(%struct.nfp_net* %27)
  %29 = call i32 @snprintf(i8* %24, i64 %25, i8* %26, i32 %28)
  %30 = load %struct.msix_entry*, %struct.msix_entry** %16, align 8
  %31 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %15, align 4
  %34 = load i8*, i8** %12, align 8
  %35 = load %struct.nfp_net*, %struct.nfp_net** %9, align 8
  %36 = call i32 @request_irq(i32 %32, i32 %33, i32 0, i8* %34, %struct.nfp_net* %35)
  store i32 %36, i32* %17, align 4
  %37 = load i32, i32* %17, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %7
  %40 = load %struct.nfp_net*, %struct.nfp_net** %9, align 8
  %41 = load %struct.msix_entry*, %struct.msix_entry** %16, align 8
  %42 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %17, align 4
  %45 = call i32 @nn_err(%struct.nfp_net* %40, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44)
  %46 = load i32, i32* %17, align 4
  store i32 %46, i32* %8, align 4
  br label %59

47:                                               ; preds = %7
  %48 = load %struct.nfp_net*, %struct.nfp_net** %9, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.msix_entry*, %struct.msix_entry** %16, align 8
  %51 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @nn_writeb(%struct.nfp_net* %48, i32 %49, i32 %52)
  %54 = load %struct.nfp_net*, %struct.nfp_net** %9, align 8
  %55 = load %struct.msix_entry*, %struct.msix_entry** %16, align 8
  %56 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @nfp_net_irq_unmask(%struct.nfp_net* %54, i32 %57)
  store i32 0, i32* %8, align 4
  br label %59

59:                                               ; preds = %47, %39
  %60 = load i32, i32* %8, align 4
  ret i32 %60
}

declare dso_local i32 @snprintf(i8*, i64, i8*, i32) #1

declare dso_local i32 @nfp_net_name(%struct.nfp_net*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.nfp_net*) #1

declare dso_local i32 @nn_err(%struct.nfp_net*, i8*, i32, i32) #1

declare dso_local i32 @nn_writeb(%struct.nfp_net*, i32, i32) #1

declare dso_local i32 @nfp_net_irq_unmask(%struct.nfp_net*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
