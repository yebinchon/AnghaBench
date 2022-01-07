; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum2_mr_tcam.c_mlxsw_sp2_mr_tcam_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum2_mr_tcam.c_mlxsw_sp2_mr_tcam_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp2_mr_tcam = type { i32, %struct.mlxsw_sp* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, i8*)* @mlxsw_sp2_mr_tcam_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp2_mr_tcam_init(%struct.mlxsw_sp* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mlxsw_sp2_mr_tcam*, align 8
  %7 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.mlxsw_sp2_mr_tcam*
  store %struct.mlxsw_sp2_mr_tcam* %9, %struct.mlxsw_sp2_mr_tcam** %6, align 8
  %10 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %11 = load %struct.mlxsw_sp2_mr_tcam*, %struct.mlxsw_sp2_mr_tcam** %6, align 8
  %12 = getelementptr inbounds %struct.mlxsw_sp2_mr_tcam, %struct.mlxsw_sp2_mr_tcam* %11, i32 0, i32 1
  store %struct.mlxsw_sp* %10, %struct.mlxsw_sp** %12, align 8
  %13 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %14 = call i32 @mlxsw_sp_acl_block_create(%struct.mlxsw_sp* %13, i32* null)
  %15 = load %struct.mlxsw_sp2_mr_tcam*, %struct.mlxsw_sp2_mr_tcam** %6, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp2_mr_tcam, %struct.mlxsw_sp2_mr_tcam* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.mlxsw_sp2_mr_tcam*, %struct.mlxsw_sp2_mr_tcam** %6, align 8
  %18 = getelementptr inbounds %struct.mlxsw_sp2_mr_tcam, %struct.mlxsw_sp2_mr_tcam* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %46

24:                                               ; preds = %2
  %25 = load %struct.mlxsw_sp2_mr_tcam*, %struct.mlxsw_sp2_mr_tcam** %6, align 8
  %26 = call i32 @mlxsw_sp2_mr_tcam_ipv4_init(%struct.mlxsw_sp2_mr_tcam* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %40

30:                                               ; preds = %24
  %31 = load %struct.mlxsw_sp2_mr_tcam*, %struct.mlxsw_sp2_mr_tcam** %6, align 8
  %32 = call i32 @mlxsw_sp2_mr_tcam_ipv6_init(%struct.mlxsw_sp2_mr_tcam* %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %37

36:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %46

37:                                               ; preds = %35
  %38 = load %struct.mlxsw_sp2_mr_tcam*, %struct.mlxsw_sp2_mr_tcam** %6, align 8
  %39 = call i32 @mlxsw_sp2_mr_tcam_ipv4_fini(%struct.mlxsw_sp2_mr_tcam* %38)
  br label %40

40:                                               ; preds = %37, %29
  %41 = load %struct.mlxsw_sp2_mr_tcam*, %struct.mlxsw_sp2_mr_tcam** %6, align 8
  %42 = getelementptr inbounds %struct.mlxsw_sp2_mr_tcam, %struct.mlxsw_sp2_mr_tcam* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @mlxsw_sp_acl_block_destroy(i32 %43)
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %40, %36, %21
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @mlxsw_sp_acl_block_create(%struct.mlxsw_sp*, i32*) #1

declare dso_local i32 @mlxsw_sp2_mr_tcam_ipv4_init(%struct.mlxsw_sp2_mr_tcam*) #1

declare dso_local i32 @mlxsw_sp2_mr_tcam_ipv6_init(%struct.mlxsw_sp2_mr_tcam*) #1

declare dso_local i32 @mlxsw_sp2_mr_tcam_ipv4_fini(%struct.mlxsw_sp2_mr_tcam*) #1

declare dso_local i32 @mlxsw_sp_acl_block_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
