; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lantiq_gswip.c_gswip_port_fdb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lantiq_gswip.c_gswip_port_fdb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.gswip_priv* }
%struct.gswip_priv = type { i32, %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.gswip_pce_table_entry = type { i32, i8*, i32, i32*, i32, i32 }
%struct.TYPE_5__ = type { %struct.net_device* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Port not part of a bridge\0A\00", align 1
@GSWIP_TABLE_MAC_BRIDGE = common dso_local global i32 0, align 4
@GSWIP_TABLE_MAC_BRIDGE_STATIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to write mac bridge: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_switch*, i32, i8*, i32, i32)* @gswip_port_fdb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gswip_port_fdb(%struct.dsa_switch* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dsa_switch*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.gswip_priv*, align 8
  %13 = alloca %struct.net_device*, align 8
  %14 = alloca %struct.gswip_pce_table_entry, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %19 = load %struct.dsa_switch*, %struct.dsa_switch** %7, align 8
  %20 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %19, i32 0, i32 0
  %21 = load %struct.gswip_priv*, %struct.gswip_priv** %20, align 8
  store %struct.gswip_priv* %21, %struct.gswip_priv** %12, align 8
  %22 = load %struct.dsa_switch*, %struct.dsa_switch** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call %struct.TYPE_5__* @dsa_to_port(%struct.dsa_switch* %22, i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.net_device*, %struct.net_device** %25, align 8
  store %struct.net_device* %26, %struct.net_device** %13, align 8
  %27 = bitcast %struct.gswip_pce_table_entry* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %27, i8 0, i64 40, i1 false)
  %28 = load %struct.gswip_priv*, %struct.gswip_priv** %12, align 8
  %29 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %28, i32 0, i32 2
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %15, align 4
  store i32 -1, i32* %16, align 4
  %33 = load %struct.net_device*, %struct.net_device** %13, align 8
  %34 = icmp ne %struct.net_device* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %5
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %161

38:                                               ; preds = %5
  %39 = load i32, i32* %15, align 4
  store i32 %39, i32* %17, align 4
  br label %40

40:                                               ; preds = %68, %38
  %41 = load i32, i32* %17, align 4
  %42 = load %struct.gswip_priv*, %struct.gswip_priv** %12, align 8
  %43 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %42, i32 0, i32 1
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %44)
  %46 = icmp slt i32 %41, %45
  br i1 %46, label %47, label %71

47:                                               ; preds = %40
  %48 = load %struct.gswip_priv*, %struct.gswip_priv** %12, align 8
  %49 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %48, i32 0, i32 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = load i32, i32* %17, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load %struct.net_device*, %struct.net_device** %54, align 8
  %56 = load %struct.net_device*, %struct.net_device** %13, align 8
  %57 = icmp eq %struct.net_device* %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %47
  %59 = load %struct.gswip_priv*, %struct.gswip_priv** %12, align 8
  %60 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %59, i32 0, i32 1
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = load i32, i32* %17, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %16, align 4
  br label %71

67:                                               ; preds = %47
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %17, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %17, align 4
  br label %40

71:                                               ; preds = %58, %40
  %72 = load i32, i32* %16, align 4
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %81

74:                                               ; preds = %71
  %75 = load %struct.gswip_priv*, %struct.gswip_priv** %12, align 8
  %76 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 (i32, i8*, ...) @dev_err(i32 %77, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %6, align 4
  br label %161

81:                                               ; preds = %71
  %82 = load i32, i32* @GSWIP_TABLE_MAC_BRIDGE, align 4
  %83 = getelementptr inbounds %struct.gswip_pce_table_entry, %struct.gswip_pce_table_entry* %14, i32 0, i32 4
  store i32 %82, i32* %83, align 8
  %84 = getelementptr inbounds %struct.gswip_pce_table_entry, %struct.gswip_pce_table_entry* %14, i32 0, i32 0
  store i32 1, i32* %84, align 8
  %85 = load i8*, i8** %9, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 5
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = load i8*, i8** %9, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 4
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = shl i32 %92, 8
  %94 = or i32 %88, %93
  %95 = trunc i32 %94 to i8
  %96 = getelementptr inbounds %struct.gswip_pce_table_entry, %struct.gswip_pce_table_entry* %14, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 0
  store i8 %95, i8* %98, align 1
  %99 = load i8*, i8** %9, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 3
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = load i8*, i8** %9, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 2
  %105 = load i8, i8* %104, align 1
  %106 = zext i8 %105 to i32
  %107 = shl i32 %106, 8
  %108 = or i32 %102, %107
  %109 = trunc i32 %108 to i8
  %110 = getelementptr inbounds %struct.gswip_pce_table_entry, %struct.gswip_pce_table_entry* %14, i32 0, i32 1
  %111 = load i8*, i8** %110, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 1
  store i8 %109, i8* %112, align 1
  %113 = load i8*, i8** %9, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 1
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i32
  %117 = load i8*, i8** %9, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 0
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i32
  %121 = shl i32 %120, 8
  %122 = or i32 %116, %121
  %123 = trunc i32 %122 to i8
  %124 = getelementptr inbounds %struct.gswip_pce_table_entry, %struct.gswip_pce_table_entry* %14, i32 0, i32 1
  %125 = load i8*, i8** %124, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 2
  store i8 %123, i8* %126, align 1
  %127 = load i32, i32* %16, align 4
  %128 = trunc i32 %127 to i8
  %129 = getelementptr inbounds %struct.gswip_pce_table_entry, %struct.gswip_pce_table_entry* %14, i32 0, i32 1
  %130 = load i8*, i8** %129, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 3
  store i8 %128, i8* %131, align 1
  %132 = load i32, i32* %11, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %81
  %135 = load i32, i32* %8, align 4
  %136 = call i32 @BIT(i32 %135)
  br label %138

137:                                              ; preds = %81
  br label %138

138:                                              ; preds = %137, %134
  %139 = phi i32 [ %136, %134 ], [ 0, %137 ]
  %140 = getelementptr inbounds %struct.gswip_pce_table_entry, %struct.gswip_pce_table_entry* %14, i32 0, i32 3
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 0
  store i32 %139, i32* %142, align 4
  %143 = load i32, i32* @GSWIP_TABLE_MAC_BRIDGE_STATIC, align 4
  %144 = getelementptr inbounds %struct.gswip_pce_table_entry, %struct.gswip_pce_table_entry* %14, i32 0, i32 3
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 1
  store i32 %143, i32* %146, align 4
  %147 = load i32, i32* %11, align 4
  %148 = getelementptr inbounds %struct.gswip_pce_table_entry, %struct.gswip_pce_table_entry* %14, i32 0, i32 2
  store i32 %147, i32* %148, align 8
  %149 = load %struct.gswip_priv*, %struct.gswip_priv** %12, align 8
  %150 = call i32 @gswip_pce_table_entry_write(%struct.gswip_priv* %149, %struct.gswip_pce_table_entry* %14)
  store i32 %150, i32* %18, align 4
  %151 = load i32, i32* %18, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %138
  %154 = load %struct.gswip_priv*, %struct.gswip_priv** %12, align 8
  %155 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* %18, align 4
  %158 = call i32 (i32, i8*, ...) @dev_err(i32 %156, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %157)
  br label %159

159:                                              ; preds = %153, %138
  %160 = load i32, i32* %18, align 4
  store i32 %160, i32* %6, align 4
  br label %161

161:                                              ; preds = %159, %74, %35
  %162 = load i32, i32* %6, align 4
  ret i32 %162
}

declare dso_local %struct.TYPE_5__* @dsa_to_port(%struct.dsa_switch*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_6__*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @gswip_pce_table_entry_write(%struct.gswip_priv*, %struct.gswip_pce_table_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
