; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_span.c_mlxsw_sp_span_dmac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_span.c_mlxsw_sp_span_dmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neigh_table = type { i32 }
%struct.net_device = type { i32 }
%struct.neighbour = type { i32, i32, i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@NUD_VALID = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.neigh_table*, i8*, %struct.net_device*, i8*)* @mlxsw_sp_span_dmac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_span_dmac(%struct.neigh_table* %0, i8* %1, %struct.net_device* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.neigh_table*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.neighbour*, align 8
  %11 = alloca i32, align 4
  store %struct.neigh_table* %0, %struct.neigh_table** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.net_device* %2, %struct.net_device** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i32, i32* @ETH_ALEN, align 4
  %13 = zext i32 %12 to i64
  %14 = load %struct.neigh_table*, %struct.neigh_table** %6, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load %struct.net_device*, %struct.net_device** %8, align 8
  %17 = call %struct.neighbour* @neigh_lookup(%struct.neigh_table* %14, i8* %15, %struct.net_device* %16)
  store %struct.neighbour* %17, %struct.neighbour** %10, align 8
  store i32 0, i32* %11, align 4
  %18 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %19 = icmp ne %struct.neighbour* %18, null
  br i1 %19, label %32, label %20

20:                                               ; preds = %4
  %21 = load %struct.neigh_table*, %struct.neigh_table** %6, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load %struct.net_device*, %struct.net_device** %8, align 8
  %24 = call %struct.neighbour* @neigh_create(%struct.neigh_table* %21, i8* %22, %struct.net_device* %23)
  store %struct.neighbour* %24, %struct.neighbour** %10, align 8
  %25 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %26 = call i64 @IS_ERR(%struct.neighbour* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %30 = call i32 @PTR_ERR(%struct.neighbour* %29)
  store i32 %30, i32* %5, align 4
  br label %66

31:                                               ; preds = %20
  br label %32

32:                                               ; preds = %31, %4
  %33 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %34 = call i32 @neigh_event_send(%struct.neighbour* %33, i32* null)
  %35 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %36 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %35, i32 0, i32 1
  %37 = call i32 @read_lock_bh(i32* %36)
  %38 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %39 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @NUD_VALID, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %32
  %45 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %46 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %44
  %50 = load i8*, i8** %9, align 8
  %51 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %52 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @ETH_ALEN, align 4
  %55 = call i32 @memcpy(i8* %50, i32 %53, i32 %54)
  br label %59

56:                                               ; preds = %44, %32
  %57 = load i32, i32* @ENOENT, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %11, align 4
  br label %59

59:                                               ; preds = %56, %49
  %60 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %61 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %60, i32 0, i32 1
  %62 = call i32 @read_unlock_bh(i32* %61)
  %63 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %64 = call i32 @neigh_release(%struct.neighbour* %63)
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %59, %28
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local %struct.neighbour* @neigh_lookup(%struct.neigh_table*, i8*, %struct.net_device*) #1

declare dso_local %struct.neighbour* @neigh_create(%struct.neigh_table*, i8*, %struct.net_device*) #1

declare dso_local i64 @IS_ERR(%struct.neighbour*) #1

declare dso_local i32 @PTR_ERR(%struct.neighbour*) #1

declare dso_local i32 @neigh_event_send(%struct.neighbour*, i32*) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

declare dso_local i32 @neigh_release(%struct.neighbour*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
