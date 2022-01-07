; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot_ace.c_ocelot_acl_block_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot_ace.c_ocelot_acl_block_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocelot_acl_block = type { %struct.ocelot*, i64, i32 }
%struct.ocelot = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ocelot_acl_block* (%struct.ocelot*)* @ocelot_acl_block_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ocelot_acl_block* @ocelot_acl_block_create(%struct.ocelot* %0) #0 {
  %2 = alloca %struct.ocelot_acl_block*, align 8
  %3 = alloca %struct.ocelot*, align 8
  %4 = alloca %struct.ocelot_acl_block*, align 8
  store %struct.ocelot* %0, %struct.ocelot** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.ocelot_acl_block* @kzalloc(i32 24, i32 %5)
  store %struct.ocelot_acl_block* %6, %struct.ocelot_acl_block** %4, align 8
  %7 = load %struct.ocelot_acl_block*, %struct.ocelot_acl_block** %4, align 8
  %8 = icmp ne %struct.ocelot_acl_block* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.ocelot_acl_block* null, %struct.ocelot_acl_block** %2, align 8
  br label %20

10:                                               ; preds = %1
  %11 = load %struct.ocelot_acl_block*, %struct.ocelot_acl_block** %4, align 8
  %12 = getelementptr inbounds %struct.ocelot_acl_block, %struct.ocelot_acl_block* %11, i32 0, i32 2
  %13 = call i32 @INIT_LIST_HEAD(i32* %12)
  %14 = load %struct.ocelot_acl_block*, %struct.ocelot_acl_block** %4, align 8
  %15 = getelementptr inbounds %struct.ocelot_acl_block, %struct.ocelot_acl_block* %14, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %17 = load %struct.ocelot_acl_block*, %struct.ocelot_acl_block** %4, align 8
  %18 = getelementptr inbounds %struct.ocelot_acl_block, %struct.ocelot_acl_block* %17, i32 0, i32 0
  store %struct.ocelot* %16, %struct.ocelot** %18, align 8
  %19 = load %struct.ocelot_acl_block*, %struct.ocelot_acl_block** %4, align 8
  store %struct.ocelot_acl_block* %19, %struct.ocelot_acl_block** %2, align 8
  br label %20

20:                                               ; preds = %10, %9
  %21 = load %struct.ocelot_acl_block*, %struct.ocelot_acl_block** %2, align 8
  ret %struct.ocelot_acl_block* %21
}

declare dso_local %struct.ocelot_acl_block* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
