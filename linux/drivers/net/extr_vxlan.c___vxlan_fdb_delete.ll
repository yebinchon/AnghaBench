; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c___vxlan_fdb_delete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c___vxlan_fdb_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxlan_dev = type { i32 }
%union.vxlan_addr = type { i32 }
%struct.vxlan_fdb = type { i32 }
%struct.vxlan_rdst = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vxlan_dev*, i8*, i32, i32, i32, i32, i32, i32)* @__vxlan_fdb_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__vxlan_fdb_delete(%struct.vxlan_dev* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %union.vxlan_addr, align 4
  %11 = alloca %struct.vxlan_dev*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.vxlan_fdb*, align 8
  %19 = alloca %struct.vxlan_rdst*, align 8
  %20 = alloca i32, align 4
  %21 = getelementptr inbounds %union.vxlan_addr, %union.vxlan_addr* %10, i32 0, i32 0
  store i32 %2, i32* %21, align 4
  store %struct.vxlan_dev* %0, %struct.vxlan_dev** %11, align 8
  store i8* %1, i8** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store %struct.vxlan_rdst* null, %struct.vxlan_rdst** %19, align 8
  %22 = load i32, i32* @ENOENT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %20, align 4
  %24 = load %struct.vxlan_dev*, %struct.vxlan_dev** %11, align 8
  %25 = load i8*, i8** %12, align 8
  %26 = load i32, i32* %14, align 4
  %27 = call %struct.vxlan_fdb* @vxlan_find_mac(%struct.vxlan_dev* %24, i8* %25, i32 %26)
  store %struct.vxlan_fdb* %27, %struct.vxlan_fdb** %18, align 8
  %28 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %18, align 8
  %29 = icmp ne %struct.vxlan_fdb* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %8
  %31 = load i32, i32* %20, align 4
  store i32 %31, i32* %9, align 4
  br label %65

32:                                               ; preds = %8
  %33 = call i32 @vxlan_addr_any(%union.vxlan_addr* %10)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %32
  %36 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %18, align 8
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* %16, align 4
  %40 = call %struct.vxlan_rdst* @vxlan_fdb_find_rdst(%struct.vxlan_fdb* %36, %union.vxlan_addr* %10, i32 %37, i32 %38, i32 %39)
  store %struct.vxlan_rdst* %40, %struct.vxlan_rdst** %19, align 8
  %41 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %19, align 8
  %42 = icmp ne %struct.vxlan_rdst* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %35
  br label %64

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %44, %32
  %46 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %19, align 8
  %47 = icmp ne %struct.vxlan_rdst* %46, null
  br i1 %47, label %48, label %59

48:                                               ; preds = %45
  %49 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %18, align 8
  %50 = getelementptr inbounds %struct.vxlan_fdb, %struct.vxlan_fdb* %49, i32 0, i32 0
  %51 = call i32 @list_is_singular(i32* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %48
  %54 = load %struct.vxlan_dev*, %struct.vxlan_dev** %11, align 8
  %55 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %18, align 8
  %56 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %19, align 8
  %57 = load i32, i32* %17, align 4
  %58 = call i32 @vxlan_fdb_dst_destroy(%struct.vxlan_dev* %54, %struct.vxlan_fdb* %55, %struct.vxlan_rdst* %56, i32 %57)
  br label %64

59:                                               ; preds = %48, %45
  %60 = load %struct.vxlan_dev*, %struct.vxlan_dev** %11, align 8
  %61 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %18, align 8
  %62 = load i32, i32* %17, align 4
  %63 = call i32 @vxlan_fdb_destroy(%struct.vxlan_dev* %60, %struct.vxlan_fdb* %61, i32 1, i32 %62)
  br label %64

64:                                               ; preds = %59, %53, %43
  store i32 0, i32* %9, align 4
  br label %65

65:                                               ; preds = %64, %30
  %66 = load i32, i32* %9, align 4
  ret i32 %66
}

declare dso_local %struct.vxlan_fdb* @vxlan_find_mac(%struct.vxlan_dev*, i8*, i32) #1

declare dso_local i32 @vxlan_addr_any(%union.vxlan_addr*) #1

declare dso_local %struct.vxlan_rdst* @vxlan_fdb_find_rdst(%struct.vxlan_fdb*, %union.vxlan_addr*, i32, i32, i32) #1

declare dso_local i32 @list_is_singular(i32*) #1

declare dso_local i32 @vxlan_fdb_dst_destroy(%struct.vxlan_dev*, %struct.vxlan_fdb*, %struct.vxlan_rdst*, i32) #1

declare dso_local i32 @vxlan_fdb_destroy(%struct.vxlan_dev*, %struct.vxlan_fdb*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
