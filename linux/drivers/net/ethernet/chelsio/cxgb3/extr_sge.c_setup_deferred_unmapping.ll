; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_sge.c_setup_deferred_unmapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_sge.c_setup_deferred_unmapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.pci_dev = type { i32 }
%struct.sg_ent = type { i32* }
%struct.deferred_unmap_info = type { i8**, %struct.pci_dev* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.pci_dev*, %struct.sg_ent*, i32)* @setup_deferred_unmapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_deferred_unmapping(%struct.sk_buff* %0, %struct.pci_dev* %1, %struct.sg_ent* %2, i32 %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.sg_ent*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca %struct.deferred_unmap_info*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %6, align 8
  store %struct.sg_ent* %2, %struct.sg_ent** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.deferred_unmap_info*
  store %struct.deferred_unmap_info* %14, %struct.deferred_unmap_info** %10, align 8
  %15 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %16 = load %struct.deferred_unmap_info*, %struct.deferred_unmap_info** %10, align 8
  %17 = getelementptr inbounds %struct.deferred_unmap_info, %struct.deferred_unmap_info* %16, i32 0, i32 1
  store %struct.pci_dev* %15, %struct.pci_dev** %17, align 8
  %18 = load %struct.deferred_unmap_info*, %struct.deferred_unmap_info** %10, align 8
  %19 = getelementptr inbounds %struct.deferred_unmap_info, %struct.deferred_unmap_info* %18, i32 0, i32 0
  %20 = load i8**, i8*** %19, align 8
  store i8** %20, i8*** %9, align 8
  br label %21

21:                                               ; preds = %41, %4
  %22 = load i32, i32* %8, align 4
  %23 = icmp sge i32 %22, 3
  br i1 %23, label %24, label %46

24:                                               ; preds = %21
  %25 = load %struct.sg_ent*, %struct.sg_ent** %7, align 8
  %26 = getelementptr inbounds %struct.sg_ent, %struct.sg_ent* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @be64_to_cpu(i32 %29)
  %31 = load i8**, i8*** %9, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i32 1
  store i8** %32, i8*** %9, align 8
  store i8* %30, i8** %31, align 8
  %33 = load %struct.sg_ent*, %struct.sg_ent** %7, align 8
  %34 = getelementptr inbounds %struct.sg_ent, %struct.sg_ent* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @be64_to_cpu(i32 %37)
  %39 = load i8**, i8*** %9, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i32 1
  store i8** %40, i8*** %9, align 8
  store i8* %38, i8** %39, align 8
  br label %41

41:                                               ; preds = %24
  %42 = load %struct.sg_ent*, %struct.sg_ent** %7, align 8
  %43 = getelementptr inbounds %struct.sg_ent, %struct.sg_ent* %42, i32 1
  store %struct.sg_ent* %43, %struct.sg_ent** %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sub nsw i32 %44, 3
  store i32 %45, i32* %8, align 4
  br label %21

46:                                               ; preds = %21
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = load %struct.sg_ent*, %struct.sg_ent** %7, align 8
  %51 = getelementptr inbounds %struct.sg_ent, %struct.sg_ent* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @be64_to_cpu(i32 %54)
  %56 = load i8**, i8*** %9, align 8
  store i8* %55, i8** %56, align 8
  br label %57

57:                                               ; preds = %49, %46
  ret void
}

declare dso_local i8* @be64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
