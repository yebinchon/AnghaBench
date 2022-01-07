; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_get_vector_ring_chain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_get_vector_ring_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns3_enet_tqp_vector = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { %struct.hns3_enet_ring* }
%struct.hns3_enet_ring = type { %struct.hns3_enet_ring*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { %struct.hns3_enet_ring* }
%struct.TYPE_5__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.hnae3_ring_chain_node = type { %struct.hnae3_ring_chain_node*, i32, i32, i32 }

@HNAE3_RING_TYPE_B = common dso_local global i32 0, align 4
@HNAE3_RING_TYPE_TX = common dso_local global i32 0, align 4
@HNAE3_RING_GL_IDX_M = common dso_local global i32 0, align 4
@HNAE3_RING_GL_IDX_S = common dso_local global i32 0, align 4
@HNAE3_RING_GL_TX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@HNAE3_RING_TYPE_RX = common dso_local global i32 0, align 4
@HNAE3_RING_GL_RX = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns3_enet_tqp_vector*, %struct.hnae3_ring_chain_node*)* @hns3_get_vector_ring_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns3_get_vector_ring_chain(%struct.hns3_enet_tqp_vector* %0, %struct.hnae3_ring_chain_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hns3_enet_tqp_vector*, align 8
  %5 = alloca %struct.hnae3_ring_chain_node*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.hnae3_ring_chain_node*, align 8
  %8 = alloca %struct.hnae3_ring_chain_node*, align 8
  %9 = alloca %struct.hns3_enet_ring*, align 8
  %10 = alloca %struct.hns3_enet_ring*, align 8
  store %struct.hns3_enet_tqp_vector* %0, %struct.hns3_enet_tqp_vector** %4, align 8
  store %struct.hnae3_ring_chain_node* %1, %struct.hnae3_ring_chain_node** %5, align 8
  %11 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %4, align 8
  %12 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %11, i32 0, i32 2
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  store %struct.pci_dev* %15, %struct.pci_dev** %6, align 8
  %16 = load %struct.hnae3_ring_chain_node*, %struct.hnae3_ring_chain_node** %5, align 8
  store %struct.hnae3_ring_chain_node* %16, %struct.hnae3_ring_chain_node** %7, align 8
  %17 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %4, align 8
  %18 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %19, align 8
  store %struct.hns3_enet_ring* %20, %struct.hns3_enet_ring** %9, align 8
  %21 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %9, align 8
  %22 = icmp ne %struct.hns3_enet_ring* %21, null
  br i1 %22, label %23, label %88

23:                                               ; preds = %2
  %24 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %9, align 8
  %25 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %24, i32 0, i32 1
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.hnae3_ring_chain_node*, %struct.hnae3_ring_chain_node** %7, align 8
  %30 = getelementptr inbounds %struct.hnae3_ring_chain_node, %struct.hnae3_ring_chain_node* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  %31 = load %struct.hnae3_ring_chain_node*, %struct.hnae3_ring_chain_node** %7, align 8
  %32 = getelementptr inbounds %struct.hnae3_ring_chain_node, %struct.hnae3_ring_chain_node* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @HNAE3_RING_TYPE_B, align 4
  %35 = load i32, i32* @HNAE3_RING_TYPE_TX, align 4
  %36 = call i32 @hnae3_set_bit(i32 %33, i32 %34, i32 %35)
  %37 = load %struct.hnae3_ring_chain_node*, %struct.hnae3_ring_chain_node** %7, align 8
  %38 = getelementptr inbounds %struct.hnae3_ring_chain_node, %struct.hnae3_ring_chain_node* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @HNAE3_RING_GL_IDX_M, align 4
  %41 = load i32, i32* @HNAE3_RING_GL_IDX_S, align 4
  %42 = load i32, i32* @HNAE3_RING_GL_TX, align 4
  %43 = call i32 @hnae3_set_field(i32 %39, i32 %40, i32 %41, i32 %42)
  %44 = load %struct.hnae3_ring_chain_node*, %struct.hnae3_ring_chain_node** %7, align 8
  %45 = getelementptr inbounds %struct.hnae3_ring_chain_node, %struct.hnae3_ring_chain_node* %44, i32 0, i32 0
  store %struct.hnae3_ring_chain_node* null, %struct.hnae3_ring_chain_node** %45, align 8
  br label %46

46:                                               ; preds = %62, %23
  %47 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %9, align 8
  %48 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %47, i32 0, i32 0
  %49 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %48, align 8
  %50 = icmp ne %struct.hns3_enet_ring* %49, null
  br i1 %50, label %51, label %87

51:                                               ; preds = %46
  %52 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %9, align 8
  %53 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %52, i32 0, i32 0
  %54 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %53, align 8
  store %struct.hns3_enet_ring* %54, %struct.hns3_enet_ring** %9, align 8
  %55 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %56 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %55, i32 0, i32 0
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call %struct.hnae3_ring_chain_node* @devm_kzalloc(i32* %56, i32 24, i32 %57)
  store %struct.hnae3_ring_chain_node* %58, %struct.hnae3_ring_chain_node** %8, align 8
  %59 = load %struct.hnae3_ring_chain_node*, %struct.hnae3_ring_chain_node** %8, align 8
  %60 = icmp ne %struct.hnae3_ring_chain_node* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %51
  br label %165

62:                                               ; preds = %51
  %63 = load %struct.hnae3_ring_chain_node*, %struct.hnae3_ring_chain_node** %8, align 8
  %64 = load %struct.hnae3_ring_chain_node*, %struct.hnae3_ring_chain_node** %7, align 8
  %65 = getelementptr inbounds %struct.hnae3_ring_chain_node, %struct.hnae3_ring_chain_node* %64, i32 0, i32 0
  store %struct.hnae3_ring_chain_node* %63, %struct.hnae3_ring_chain_node** %65, align 8
  %66 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %9, align 8
  %67 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %66, i32 0, i32 1
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.hnae3_ring_chain_node*, %struct.hnae3_ring_chain_node** %8, align 8
  %72 = getelementptr inbounds %struct.hnae3_ring_chain_node, %struct.hnae3_ring_chain_node* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 8
  %73 = load %struct.hnae3_ring_chain_node*, %struct.hnae3_ring_chain_node** %8, align 8
  %74 = getelementptr inbounds %struct.hnae3_ring_chain_node, %struct.hnae3_ring_chain_node* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @HNAE3_RING_TYPE_B, align 4
  %77 = load i32, i32* @HNAE3_RING_TYPE_TX, align 4
  %78 = call i32 @hnae3_set_bit(i32 %75, i32 %76, i32 %77)
  %79 = load %struct.hnae3_ring_chain_node*, %struct.hnae3_ring_chain_node** %8, align 8
  %80 = getelementptr inbounds %struct.hnae3_ring_chain_node, %struct.hnae3_ring_chain_node* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @HNAE3_RING_GL_IDX_M, align 4
  %83 = load i32, i32* @HNAE3_RING_GL_IDX_S, align 4
  %84 = load i32, i32* @HNAE3_RING_GL_TX, align 4
  %85 = call i32 @hnae3_set_field(i32 %81, i32 %82, i32 %83, i32 %84)
  %86 = load %struct.hnae3_ring_chain_node*, %struct.hnae3_ring_chain_node** %8, align 8
  store %struct.hnae3_ring_chain_node* %86, %struct.hnae3_ring_chain_node** %7, align 8
  br label %46

87:                                               ; preds = %46
  br label %88

88:                                               ; preds = %87, %2
  %89 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %4, align 8
  %90 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %91, align 8
  store %struct.hns3_enet_ring* %92, %struct.hns3_enet_ring** %10, align 8
  %93 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %9, align 8
  %94 = icmp ne %struct.hns3_enet_ring* %93, null
  br i1 %94, label %124, label %95

95:                                               ; preds = %88
  %96 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %10, align 8
  %97 = icmp ne %struct.hns3_enet_ring* %96, null
  br i1 %97, label %98, label %124

98:                                               ; preds = %95
  %99 = load %struct.hnae3_ring_chain_node*, %struct.hnae3_ring_chain_node** %7, align 8
  %100 = getelementptr inbounds %struct.hnae3_ring_chain_node, %struct.hnae3_ring_chain_node* %99, i32 0, i32 0
  store %struct.hnae3_ring_chain_node* null, %struct.hnae3_ring_chain_node** %100, align 8
  %101 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %10, align 8
  %102 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %101, i32 0, i32 1
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.hnae3_ring_chain_node*, %struct.hnae3_ring_chain_node** %7, align 8
  %107 = getelementptr inbounds %struct.hnae3_ring_chain_node, %struct.hnae3_ring_chain_node* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 8
  %108 = load %struct.hnae3_ring_chain_node*, %struct.hnae3_ring_chain_node** %7, align 8
  %109 = getelementptr inbounds %struct.hnae3_ring_chain_node, %struct.hnae3_ring_chain_node* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @HNAE3_RING_TYPE_B, align 4
  %112 = load i32, i32* @HNAE3_RING_TYPE_RX, align 4
  %113 = call i32 @hnae3_set_bit(i32 %110, i32 %111, i32 %112)
  %114 = load %struct.hnae3_ring_chain_node*, %struct.hnae3_ring_chain_node** %7, align 8
  %115 = getelementptr inbounds %struct.hnae3_ring_chain_node, %struct.hnae3_ring_chain_node* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @HNAE3_RING_GL_IDX_M, align 4
  %118 = load i32, i32* @HNAE3_RING_GL_IDX_S, align 4
  %119 = load i32, i32* @HNAE3_RING_GL_RX, align 4
  %120 = call i32 @hnae3_set_field(i32 %116, i32 %117, i32 %118, i32 %119)
  %121 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %10, align 8
  %122 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %121, i32 0, i32 0
  %123 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %122, align 8
  store %struct.hns3_enet_ring* %123, %struct.hns3_enet_ring** %10, align 8
  br label %124

124:                                              ; preds = %98, %95, %88
  br label %125

125:                                              ; preds = %136, %124
  %126 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %10, align 8
  %127 = icmp ne %struct.hns3_enet_ring* %126, null
  br i1 %127, label %128, label %164

128:                                              ; preds = %125
  %129 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %130 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %129, i32 0, i32 0
  %131 = load i32, i32* @GFP_KERNEL, align 4
  %132 = call %struct.hnae3_ring_chain_node* @devm_kzalloc(i32* %130, i32 24, i32 %131)
  store %struct.hnae3_ring_chain_node* %132, %struct.hnae3_ring_chain_node** %8, align 8
  %133 = load %struct.hnae3_ring_chain_node*, %struct.hnae3_ring_chain_node** %8, align 8
  %134 = icmp ne %struct.hnae3_ring_chain_node* %133, null
  br i1 %134, label %136, label %135

135:                                              ; preds = %128
  br label %165

136:                                              ; preds = %128
  %137 = load %struct.hnae3_ring_chain_node*, %struct.hnae3_ring_chain_node** %8, align 8
  %138 = load %struct.hnae3_ring_chain_node*, %struct.hnae3_ring_chain_node** %7, align 8
  %139 = getelementptr inbounds %struct.hnae3_ring_chain_node, %struct.hnae3_ring_chain_node* %138, i32 0, i32 0
  store %struct.hnae3_ring_chain_node* %137, %struct.hnae3_ring_chain_node** %139, align 8
  %140 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %10, align 8
  %141 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %140, i32 0, i32 1
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.hnae3_ring_chain_node*, %struct.hnae3_ring_chain_node** %8, align 8
  %146 = getelementptr inbounds %struct.hnae3_ring_chain_node, %struct.hnae3_ring_chain_node* %145, i32 0, i32 3
  store i32 %144, i32* %146, align 8
  %147 = load %struct.hnae3_ring_chain_node*, %struct.hnae3_ring_chain_node** %8, align 8
  %148 = getelementptr inbounds %struct.hnae3_ring_chain_node, %struct.hnae3_ring_chain_node* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @HNAE3_RING_TYPE_B, align 4
  %151 = load i32, i32* @HNAE3_RING_TYPE_RX, align 4
  %152 = call i32 @hnae3_set_bit(i32 %149, i32 %150, i32 %151)
  %153 = load %struct.hnae3_ring_chain_node*, %struct.hnae3_ring_chain_node** %8, align 8
  %154 = getelementptr inbounds %struct.hnae3_ring_chain_node, %struct.hnae3_ring_chain_node* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @HNAE3_RING_GL_IDX_M, align 4
  %157 = load i32, i32* @HNAE3_RING_GL_IDX_S, align 4
  %158 = load i32, i32* @HNAE3_RING_GL_RX, align 4
  %159 = call i32 @hnae3_set_field(i32 %155, i32 %156, i32 %157, i32 %158)
  %160 = load %struct.hnae3_ring_chain_node*, %struct.hnae3_ring_chain_node** %8, align 8
  store %struct.hnae3_ring_chain_node* %160, %struct.hnae3_ring_chain_node** %7, align 8
  %161 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %10, align 8
  %162 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %161, i32 0, i32 0
  %163 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %162, align 8
  store %struct.hns3_enet_ring* %163, %struct.hns3_enet_ring** %10, align 8
  br label %125

164:                                              ; preds = %125
  store i32 0, i32* %3, align 4
  br label %186

165:                                              ; preds = %135, %61
  %166 = load %struct.hnae3_ring_chain_node*, %struct.hnae3_ring_chain_node** %5, align 8
  %167 = getelementptr inbounds %struct.hnae3_ring_chain_node, %struct.hnae3_ring_chain_node* %166, i32 0, i32 0
  %168 = load %struct.hnae3_ring_chain_node*, %struct.hnae3_ring_chain_node** %167, align 8
  store %struct.hnae3_ring_chain_node* %168, %struct.hnae3_ring_chain_node** %7, align 8
  br label %169

169:                                              ; preds = %172, %165
  %170 = load %struct.hnae3_ring_chain_node*, %struct.hnae3_ring_chain_node** %7, align 8
  %171 = icmp ne %struct.hnae3_ring_chain_node* %170, null
  br i1 %171, label %172, label %181

172:                                              ; preds = %169
  %173 = load %struct.hnae3_ring_chain_node*, %struct.hnae3_ring_chain_node** %7, align 8
  %174 = getelementptr inbounds %struct.hnae3_ring_chain_node, %struct.hnae3_ring_chain_node* %173, i32 0, i32 0
  %175 = load %struct.hnae3_ring_chain_node*, %struct.hnae3_ring_chain_node** %174, align 8
  store %struct.hnae3_ring_chain_node* %175, %struct.hnae3_ring_chain_node** %8, align 8
  %176 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %177 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %176, i32 0, i32 0
  %178 = load %struct.hnae3_ring_chain_node*, %struct.hnae3_ring_chain_node** %7, align 8
  %179 = call i32 @devm_kfree(i32* %177, %struct.hnae3_ring_chain_node* %178)
  %180 = load %struct.hnae3_ring_chain_node*, %struct.hnae3_ring_chain_node** %8, align 8
  store %struct.hnae3_ring_chain_node* %180, %struct.hnae3_ring_chain_node** %7, align 8
  br label %169

181:                                              ; preds = %169
  %182 = load %struct.hnae3_ring_chain_node*, %struct.hnae3_ring_chain_node** %5, align 8
  %183 = getelementptr inbounds %struct.hnae3_ring_chain_node, %struct.hnae3_ring_chain_node* %182, i32 0, i32 0
  store %struct.hnae3_ring_chain_node* null, %struct.hnae3_ring_chain_node** %183, align 8
  %184 = load i32, i32* @ENOMEM, align 4
  %185 = sub nsw i32 0, %184
  store i32 %185, i32* %3, align 4
  br label %186

186:                                              ; preds = %181, %164
  %187 = load i32, i32* %3, align 4
  ret i32 %187
}

declare dso_local i32 @hnae3_set_bit(i32, i32, i32) #1

declare dso_local i32 @hnae3_set_field(i32, i32, i32, i32) #1

declare dso_local %struct.hnae3_ring_chain_node* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_kfree(i32*, %struct.hnae3_ring_chain_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
