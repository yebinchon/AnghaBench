; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_port_ipv4_nh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_port_ipv4_nh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofdpa_port = type { i32, %struct.ofdpa* }
%struct.ofdpa = type { i32 }
%struct.ofdpa_neigh_tbl_entry = type { i32, i32, i32, i32 }

@OFDPA_OP_FLAG_REMOVE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ofdpa_port*, i32, i32, i32*)* @ofdpa_port_ipv4_nh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofdpa_port_ipv4_nh(%struct.ofdpa_port* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ofdpa_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ofdpa*, align 8
  %11 = alloca %struct.ofdpa_neigh_tbl_entry*, align 8
  %12 = alloca %struct.ofdpa_neigh_tbl_entry*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ofdpa_port* %0, %struct.ofdpa_port** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %19 = load %struct.ofdpa_port*, %struct.ofdpa_port** %6, align 8
  %20 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %19, i32 0, i32 1
  %21 = load %struct.ofdpa*, %struct.ofdpa** %20, align 8
  store %struct.ofdpa* %21, %struct.ofdpa** %10, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @OFDPA_OP_FLAG_REMOVE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %14, align 4
  store i32 1, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.ofdpa_neigh_tbl_entry* @kzalloc(i32 16, i32 %28)
  store %struct.ofdpa_neigh_tbl_entry* %29, %struct.ofdpa_neigh_tbl_entry** %11, align 8
  %30 = load %struct.ofdpa_neigh_tbl_entry*, %struct.ofdpa_neigh_tbl_entry** %11, align 8
  %31 = icmp ne %struct.ofdpa_neigh_tbl_entry* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %4
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %142

35:                                               ; preds = %4
  %36 = load %struct.ofdpa*, %struct.ofdpa** %10, align 8
  %37 = getelementptr inbounds %struct.ofdpa, %struct.ofdpa* %36, i32 0, i32 0
  %38 = load i64, i64* %13, align 8
  %39 = call i32 @spin_lock_irqsave(i32* %37, i64 %38)
  %40 = load %struct.ofdpa*, %struct.ofdpa** %10, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call %struct.ofdpa_neigh_tbl_entry* @ofdpa_neigh_tbl_find(%struct.ofdpa* %40, i32 %41)
  store %struct.ofdpa_neigh_tbl_entry* %42, %struct.ofdpa_neigh_tbl_entry** %12, align 8
  %43 = load %struct.ofdpa_neigh_tbl_entry*, %struct.ofdpa_neigh_tbl_entry** %12, align 8
  %44 = icmp ne %struct.ofdpa_neigh_tbl_entry* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %35
  %46 = load i32, i32* %14, align 4
  %47 = icmp ne i32 %46, 0
  br label %48

48:                                               ; preds = %45, %35
  %49 = phi i1 [ false, %35 ], [ %47, %45 ]
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %15, align 4
  %51 = load %struct.ofdpa_neigh_tbl_entry*, %struct.ofdpa_neigh_tbl_entry** %12, align 8
  %52 = icmp ne %struct.ofdpa_neigh_tbl_entry* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load i32, i32* %14, align 4
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  br label %57

57:                                               ; preds = %53, %48
  %58 = phi i1 [ false, %48 ], [ %56, %53 ]
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %16, align 4
  %60 = load %struct.ofdpa_neigh_tbl_entry*, %struct.ofdpa_neigh_tbl_entry** %12, align 8
  %61 = icmp ne %struct.ofdpa_neigh_tbl_entry* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* %14, align 4
  %64 = icmp ne i32 %63, 0
  br label %65

65:                                               ; preds = %62, %57
  %66 = phi i1 [ false, %57 ], [ %64, %62 ]
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %14, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %86

70:                                               ; preds = %65
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.ofdpa_neigh_tbl_entry*, %struct.ofdpa_neigh_tbl_entry** %11, align 8
  %73 = getelementptr inbounds %struct.ofdpa_neigh_tbl_entry, %struct.ofdpa_neigh_tbl_entry* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  %74 = load %struct.ofdpa_port*, %struct.ofdpa_port** %6, align 8
  %75 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.ofdpa_neigh_tbl_entry*, %struct.ofdpa_neigh_tbl_entry** %11, align 8
  %78 = getelementptr inbounds %struct.ofdpa_neigh_tbl_entry, %struct.ofdpa_neigh_tbl_entry* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  %79 = load %struct.ofdpa*, %struct.ofdpa** %10, align 8
  %80 = load %struct.ofdpa_neigh_tbl_entry*, %struct.ofdpa_neigh_tbl_entry** %11, align 8
  %81 = call i32 @ofdpa_neigh_add(%struct.ofdpa* %79, %struct.ofdpa_neigh_tbl_entry* %80)
  %82 = load %struct.ofdpa_neigh_tbl_entry*, %struct.ofdpa_neigh_tbl_entry** %11, align 8
  %83 = getelementptr inbounds %struct.ofdpa_neigh_tbl_entry, %struct.ofdpa_neigh_tbl_entry* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %9, align 8
  store i32 %84, i32* %85, align 4
  store i32 0, i32* %17, align 4
  br label %118

86:                                               ; preds = %65
  %87 = load i32, i32* %16, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %86
  %90 = load %struct.ofdpa_neigh_tbl_entry*, %struct.ofdpa_neigh_tbl_entry** %12, align 8
  %91 = getelementptr inbounds %struct.ofdpa_neigh_tbl_entry, %struct.ofdpa_neigh_tbl_entry* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %9, align 8
  store i32 %92, i32* %93, align 4
  %94 = load %struct.ofdpa_neigh_tbl_entry*, %struct.ofdpa_neigh_tbl_entry** %12, align 8
  %95 = call i32 @ofdpa_neigh_del(%struct.ofdpa_neigh_tbl_entry* %94)
  br label %117

96:                                               ; preds = %86
  %97 = load i32, i32* %15, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %113

99:                                               ; preds = %96
  %100 = load %struct.ofdpa_neigh_tbl_entry*, %struct.ofdpa_neigh_tbl_entry** %12, align 8
  %101 = call i32 @ofdpa_neigh_update(%struct.ofdpa_neigh_tbl_entry* %100, i32* null, i32 0)
  %102 = load %struct.ofdpa_neigh_tbl_entry*, %struct.ofdpa_neigh_tbl_entry** %12, align 8
  %103 = getelementptr inbounds %struct.ofdpa_neigh_tbl_entry, %struct.ofdpa_neigh_tbl_entry* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @is_zero_ether_addr(i32 %104)
  %106 = icmp ne i32 %105, 0
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  store i32 %108, i32* %17, align 4
  %109 = load %struct.ofdpa_neigh_tbl_entry*, %struct.ofdpa_neigh_tbl_entry** %12, align 8
  %110 = getelementptr inbounds %struct.ofdpa_neigh_tbl_entry, %struct.ofdpa_neigh_tbl_entry* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32*, i32** %9, align 8
  store i32 %111, i32* %112, align 4
  br label %116

113:                                              ; preds = %96
  %114 = load i32, i32* @ENOENT, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %18, align 4
  br label %116

116:                                              ; preds = %113, %99
  br label %117

117:                                              ; preds = %116, %89
  br label %118

118:                                              ; preds = %117, %70
  %119 = load %struct.ofdpa*, %struct.ofdpa** %10, align 8
  %120 = getelementptr inbounds %struct.ofdpa, %struct.ofdpa* %119, i32 0, i32 0
  %121 = load i64, i64* %13, align 8
  %122 = call i32 @spin_unlock_irqrestore(i32* %120, i64 %121)
  %123 = load i32, i32* %14, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %118
  %126 = load %struct.ofdpa_neigh_tbl_entry*, %struct.ofdpa_neigh_tbl_entry** %11, align 8
  %127 = call i32 @kfree(%struct.ofdpa_neigh_tbl_entry* %126)
  br label %128

128:                                              ; preds = %125, %118
  %129 = load i32, i32* %18, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %128
  %132 = load i32, i32* %18, align 4
  store i32 %132, i32* %5, align 4
  br label %142

133:                                              ; preds = %128
  %134 = load i32, i32* %17, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %140, label %136

136:                                              ; preds = %133
  %137 = load %struct.ofdpa_port*, %struct.ofdpa_port** %6, align 8
  %138 = load i32, i32* %8, align 4
  %139 = call i32 @ofdpa_port_ipv4_resolve(%struct.ofdpa_port* %137, i32 %138)
  store i32 %139, i32* %18, align 4
  br label %140

140:                                              ; preds = %136, %133
  %141 = load i32, i32* %18, align 4
  store i32 %141, i32* %5, align 4
  br label %142

142:                                              ; preds = %140, %131, %32
  %143 = load i32, i32* %5, align 4
  ret i32 %143
}

declare dso_local %struct.ofdpa_neigh_tbl_entry* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.ofdpa_neigh_tbl_entry* @ofdpa_neigh_tbl_find(%struct.ofdpa*, i32) #1

declare dso_local i32 @ofdpa_neigh_add(%struct.ofdpa*, %struct.ofdpa_neigh_tbl_entry*) #1

declare dso_local i32 @ofdpa_neigh_del(%struct.ofdpa_neigh_tbl_entry*) #1

declare dso_local i32 @ofdpa_neigh_update(%struct.ofdpa_neigh_tbl_entry*, i32*, i32) #1

declare dso_local i32 @is_zero_ether_addr(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(%struct.ofdpa_neigh_tbl_entry*) #1

declare dso_local i32 @ofdpa_port_ipv4_resolve(%struct.ofdpa_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
