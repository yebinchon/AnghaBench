; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_main.c_print_adapter_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_main.c_print_adapter_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"Configuration: %sNIC %s, %s capable\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CXGB4_USING_MSIX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"MSI-X\00", align 1
@CXGB4_USING_MSI = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"MSI\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Offload\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"non-Offload\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @print_adapter_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_adapter_info(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %3 = load %struct.adapter*, %struct.adapter** %2, align 8
  %4 = call i32 @t4_dump_version_info(%struct.adapter* %3)
  %5 = load %struct.adapter*, %struct.adapter** %2, align 8
  %6 = getelementptr inbounds %struct.adapter, %struct.adapter* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.adapter*, %struct.adapter** %2, align 8
  %9 = call i64 @is_offload(%struct.adapter* %8)
  %10 = icmp ne i64 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %13 = load %struct.adapter*, %struct.adapter** %2, align 8
  %14 = getelementptr inbounds %struct.adapter, %struct.adapter* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @CXGB4_USING_MSIX, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %29

20:                                               ; preds = %1
  %21 = load %struct.adapter*, %struct.adapter** %2, align 8
  %22 = getelementptr inbounds %struct.adapter, %struct.adapter* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @CXGB4_USING_MSI, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  br label %29

29:                                               ; preds = %20, %19
  %30 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), %19 ], [ %28, %20 ]
  %31 = load %struct.adapter*, %struct.adapter** %2, align 8
  %32 = call i64 @is_offload(%struct.adapter* %31)
  %33 = icmp ne i64 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0)
  %36 = call i32 @dev_info(i32 %7, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %12, i8* %30, i8* %35)
  ret void
}

declare dso_local i32 @t4_dump_version_info(%struct.adapter*) #1

declare dso_local i32 @dev_info(i32, i8*, i8*, i8*, i8*) #1

declare dso_local i64 @is_offload(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
