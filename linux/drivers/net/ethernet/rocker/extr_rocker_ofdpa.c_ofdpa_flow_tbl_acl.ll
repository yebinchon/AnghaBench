; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_flow_tbl_acl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_flow_tbl_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofdpa_port = type { i32 }
%struct.ofdpa_flow_tbl_entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32, i8* }
%struct.TYPE_3__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OFDPA_PRIORITY_ACL_NORMAL = common dso_local global i8* null, align 8
@mcast_mac = common dso_local global i32 0, align 4
@OFDPA_PRIORITY_ACL_DFLT = common dso_local global i8* null, align 8
@OFDPA_PRIORITY_ACL_CTRL = common dso_local global i8* null, align 8
@ROCKER_OF_DPA_TABLE_ID_ACL_POLICY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ofdpa_port*, i32, i8*, i8*, i8**, i8**, i8**, i8**, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* @ofdpa_flow_tbl_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofdpa_flow_tbl_acl(%struct.ofdpa_port* %0, i32 %1, i8* %2, i8* %3, i8** %4, i8** %5, i8** %6, i8** %7, i8* %8, i8* %9, i8* %10, i8* %11, i8* %12, i8* %13, i8* %14, i8* %15) #0 {
  %17 = alloca i32, align 4
  %18 = alloca %struct.ofdpa_port*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8**, align 8
  %23 = alloca i8**, align 8
  %24 = alloca i8**, align 8
  %25 = alloca i8**, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i8*, align 8
  %34 = alloca i8*, align 8
  %35 = alloca %struct.ofdpa_flow_tbl_entry*, align 8
  store %struct.ofdpa_port* %0, %struct.ofdpa_port** %18, align 8
  store i32 %1, i32* %19, align 4
  store i8* %2, i8** %20, align 8
  store i8* %3, i8** %21, align 8
  store i8** %4, i8*** %22, align 8
  store i8** %5, i8*** %23, align 8
  store i8** %6, i8*** %24, align 8
  store i8** %7, i8*** %25, align 8
  store i8* %8, i8** %26, align 8
  store i8* %9, i8** %27, align 8
  store i8* %10, i8** %28, align 8
  store i8* %11, i8** %29, align 8
  store i8* %12, i8** %30, align 8
  store i8* %13, i8** %31, align 8
  store i8* %14, i8** %32, align 8
  store i8* %15, i8** %33, align 8
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.ofdpa_flow_tbl_entry* @kzalloc(i32 112, i32 %36)
  store %struct.ofdpa_flow_tbl_entry* %37, %struct.ofdpa_flow_tbl_entry** %35, align 8
  %38 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %35, align 8
  %39 = icmp ne %struct.ofdpa_flow_tbl_entry* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %16
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %17, align 4
  br label %172

43:                                               ; preds = %16
  %44 = load i8*, i8** @OFDPA_PRIORITY_ACL_NORMAL, align 8
  store i8* %44, i8** %34, align 8
  %45 = load i8**, i8*** %24, align 8
  %46 = icmp ne i8** %45, null
  br i1 %46, label %47, label %65

47:                                               ; preds = %43
  %48 = load i8**, i8*** %25, align 8
  %49 = icmp ne i8** %48, null
  br i1 %49, label %50, label %65

50:                                               ; preds = %47
  %51 = load i8**, i8*** %25, align 8
  %52 = load i32, i32* @mcast_mac, align 4
  %53 = call i64 @ether_addr_equal(i8** %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i8*, i8** @OFDPA_PRIORITY_ACL_DFLT, align 8
  store i8* %56, i8** %34, align 8
  br label %64

57:                                               ; preds = %50
  %58 = load i8**, i8*** %24, align 8
  %59 = call i64 @is_link_local_ether_addr(i8** %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i8*, i8** @OFDPA_PRIORITY_ACL_CTRL, align 8
  store i8* %62, i8** %34, align 8
  br label %63

63:                                               ; preds = %61, %57
  br label %64

64:                                               ; preds = %63, %55
  br label %65

65:                                               ; preds = %64, %47, %43
  %66 = load i8*, i8** %34, align 8
  %67 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %35, align 8
  %68 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  store i8* %66, i8** %69, align 8
  %70 = load i32, i32* @ROCKER_OF_DPA_TABLE_ID_ACL_POLICY, align 4
  %71 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %35, align 8
  %72 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  store i32 %70, i32* %73, align 8
  %74 = load i8*, i8** %20, align 8
  %75 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %35, align 8
  %76 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 13
  store i8* %74, i8** %78, align 8
  %79 = load i8*, i8** %21, align 8
  %80 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %35, align 8
  %81 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 12
  store i8* %79, i8** %83, align 8
  %84 = load i8**, i8*** %22, align 8
  %85 = icmp ne i8** %84, null
  br i1 %85, label %86, label %94

86:                                               ; preds = %65
  %87 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %35, align 8
  %88 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 11
  %91 = load i32, i32* %90, align 4
  %92 = load i8**, i8*** %22, align 8
  %93 = call i32 @ether_addr_copy(i32 %91, i8** %92)
  br label %94

94:                                               ; preds = %86, %65
  %95 = load i8**, i8*** %23, align 8
  %96 = icmp ne i8** %95, null
  br i1 %96, label %97, label %105

97:                                               ; preds = %94
  %98 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %35, align 8
  %99 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 10
  %102 = load i32, i32* %101, align 8
  %103 = load i8**, i8*** %23, align 8
  %104 = call i32 @ether_addr_copy(i32 %102, i8** %103)
  br label %105

105:                                              ; preds = %97, %94
  %106 = load i8**, i8*** %24, align 8
  %107 = icmp ne i8** %106, null
  br i1 %107, label %108, label %116

108:                                              ; preds = %105
  %109 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %35, align 8
  %110 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 9
  %113 = load i32, i32* %112, align 4
  %114 = load i8**, i8*** %24, align 8
  %115 = call i32 @ether_addr_copy(i32 %113, i8** %114)
  br label %116

116:                                              ; preds = %108, %105
  %117 = load i8**, i8*** %25, align 8
  %118 = icmp ne i8** %117, null
  br i1 %118, label %119, label %127

119:                                              ; preds = %116
  %120 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %35, align 8
  %121 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 8
  %124 = load i32, i32* %123, align 8
  %125 = load i8**, i8*** %25, align 8
  %126 = call i32 @ether_addr_copy(i32 %124, i8** %125)
  br label %127

127:                                              ; preds = %119, %116
  %128 = load i8*, i8** %26, align 8
  %129 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %35, align 8
  %130 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 7
  store i8* %128, i8** %132, align 8
  %133 = load i8*, i8** %27, align 8
  %134 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %35, align 8
  %135 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 6
  store i8* %133, i8** %137, align 8
  %138 = load i8*, i8** %28, align 8
  %139 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %35, align 8
  %140 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 5
  store i8* %138, i8** %142, align 8
  %143 = load i8*, i8** %29, align 8
  %144 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %35, align 8
  %145 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 4
  store i8* %143, i8** %147, align 8
  %148 = load i8*, i8** %30, align 8
  %149 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %35, align 8
  %150 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 3
  store i8* %148, i8** %152, align 8
  %153 = load i8*, i8** %31, align 8
  %154 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %35, align 8
  %155 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 2
  store i8* %153, i8** %157, align 8
  %158 = load i8*, i8** %32, align 8
  %159 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %35, align 8
  %160 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 1
  store i8* %158, i8** %162, align 8
  %163 = load i8*, i8** %33, align 8
  %164 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %35, align 8
  %165 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 0
  store i8* %163, i8** %167, align 8
  %168 = load %struct.ofdpa_port*, %struct.ofdpa_port** %18, align 8
  %169 = load i32, i32* %19, align 4
  %170 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %35, align 8
  %171 = call i32 @ofdpa_flow_tbl_do(%struct.ofdpa_port* %168, i32 %169, %struct.ofdpa_flow_tbl_entry* %170)
  store i32 %171, i32* %17, align 4
  br label %172

172:                                              ; preds = %127, %40
  %173 = load i32, i32* %17, align 4
  ret i32 %173
}

declare dso_local %struct.ofdpa_flow_tbl_entry* @kzalloc(i32, i32) #1

declare dso_local i64 @ether_addr_equal(i8**, i32) #1

declare dso_local i64 @is_link_local_ether_addr(i8**) #1

declare dso_local i32 @ether_addr_copy(i32, i8**) #1

declare dso_local i32 @ofdpa_flow_tbl_do(%struct.ofdpa_port*, i32, %struct.ofdpa_flow_tbl_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
